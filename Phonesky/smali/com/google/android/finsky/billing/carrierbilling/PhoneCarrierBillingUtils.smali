.class public Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;
.super Ljava/lang/Object;
.source "PhoneCarrierBillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$1;,
        Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    }
.end annotation


# static fields
.field private static final addressMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static convertAddressFieldToInputField(Lcom/android/i18n/addressinput/AddressField;)Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/AddressField;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->addressMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    return-object v0
.end method

.method public static getErrors(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Ljava/util/Collection;
    .locals 6
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/i18n/addressinput/AddressProblems;
    .param p3    # Lcom/google/android/finsky/billing/BillingUtils$AddressMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/addressinput/AddressProblems;",
            "Lcom/google/android/finsky/billing/BillingUtils$AddressMode;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p3}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v4, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-virtual {v4, p3}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->convertAddressFieldToInputField(Lcom/android/i18n/addressinput/AddressField;)Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSubscriberInfo(Lcom/google/android/finsky/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 2
    .param p0    # Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z
    .locals 2
    .param p0    # Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne p0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/config/G;->reducedBillingAddressRequiresPhonenumber:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 3
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .param p1    # Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/BillingAddress$Address;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasName:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPhoneNumber:Z

    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v1, p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine1:Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine2:Z

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasCity:Z

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasState:Z

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCode:Z

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCountry:Z

    :cond_7
    return-object v0

    :cond_8
    iput-boolean v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    goto :goto_0
.end method

.method public static subscriberInfoToAddressData(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/android/i18n/addressinput/AddressData;
    .locals 2
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    new-instance v0, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    return-object v0
.end method
