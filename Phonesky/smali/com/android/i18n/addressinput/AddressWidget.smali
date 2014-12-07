.class public Lcom/android/i18n/addressinput/AddressWidget;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/AddressWidget$4;,
        Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;,
        Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;,
        Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;
    }
.end annotation


# static fields
.field private static final ADMIN_ERROR_MESSAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADMIN_LABELS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;


# instance fields
.field private mAdminLabel:Ljava/lang/String;

.field private mCacheData:Lcom/android/i18n/addressinput/CacheData;

.field private mContext:Landroid/content/Context;

.field private mCurrentRegion:Ljava/lang/String;

.field private mFormController:Lcom/android/i18n/addressinput/FormController;

.field private mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

.field private mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

.field final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInputWidgets:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Lcom/android/i18n/addressinput/AddressUIComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

.field private mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

.field private mSavedErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

.field private mSpinners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

.field final mUpdateMultipleFields:Ljava/lang/Runnable;

.field private mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

.field private mWidgetLocale:Ljava/lang/String;

.field private mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xf

    new-instance v2, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/addressinput/AddressWidget;->SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "area"

    const v3, 0x7f090022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "county"

    const v3, 0x7f090023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "department"

    const v3, 0x7f090024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "district"

    const v3, 0x7f09001c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "do_si"

    const v3, 0x7f090025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "emirate"

    const v3, 0x7f090026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "island"

    const v3, 0x7f090027

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "parish"

    const v3, 0x7f090028

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "prefecture"

    const v3, 0x7f090029

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "province"

    const v3, 0x7f09002a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "state"

    const v3, 0x7f09002b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_LABELS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "area"

    const v3, 0x7f090032

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "county"

    const v3, 0x7f090033

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "department"

    const v3, 0x7f090034

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "district"

    const v3, 0x7f09002f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "do_si"

    const v3, 0x7f090035

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "emirate"

    const v3, 0x7f090036

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "island"

    const v3, 0x7f090037

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "parish"

    const v3, 0x7f090038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "prefecture"

    const v3, 0x7f090039

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "province"

    const v3, 0x7f09003a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "state"

    const v3, 0x7f09003b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_ERROR_MESSAGES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/layout/AddressFieldsLayout;
    .param p3    # Lcom/android/i18n/addressinput/FormOptions;
    .param p4    # Lcom/android/i18n/addressinput/ClientCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$1;

    invoke-direct {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget$1;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/AddressWidget;->init(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/layout/AddressFieldsLayout;
    .param p3    # Lcom/android/i18n/addressinput/FormOptions;
    .param p4    # Lcom/android/i18n/addressinput/ClientCacheManager;
    .param p5    # Lcom/android/i18n/addressinput/AddressData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$1;

    invoke-direct {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget$1;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {p5}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/AddressWidget;->init(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    invoke-virtual {p0, p5}, Lcom/android/i18n/addressinput/AddressWidget;->renderFormWithSavedAddress(Lcom/android/i18n/addressinput/AddressData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/layout/AddressFieldsLayout;
    .param p3    # Lcom/android/i18n/addressinput/FormOptions;
    .param p4    # Lcom/android/i18n/addressinput/ClientCacheManager;
    .param p5    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$1;

    invoke-direct {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget$1;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/AddressWidget;->init(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/AddressWidget;)V
    .locals 0
    .param p0    # Lcom/android/i18n/addressinput/AddressWidget;

    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->updateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V
    .locals 0
    .param p0    # Lcom/android/i18n/addressinput/AddressWidget;
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->updateInputWidget(Lcom/android/i18n/addressinput/AddressField;)V

    return-void
.end method

.method private buildFieldWidgets()V
    .locals 14

    new-instance v12, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v12}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v13, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v4

    new-instance v12, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v13, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v12, v13}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v12, v4}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v5

    new-instance v12, Lcom/android/i18n/addressinput/ClientData;

    iget-object v13, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v12, v13}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v3

    new-instance v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v2, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getAdminAreaFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v6, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f09001b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v11, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f09001c

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f09001f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v1, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    const-string v12, ""

    invoke-virtual {v1, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v7, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f09001d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v9, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f09001e

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v8, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getZipFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v10, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    const-string v12, "CEDEX"

    invoke-virtual {v10, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createView(Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 8
    .param p1    # Lcom/google/android/finsky/layout/AddressFieldsLayout;
    .param p2    # Lcom/android/i18n/addressinput/AddressUIComponent;
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Z

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v6, v7}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040003

    invoke-virtual {v6, v7, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/AddressAutoComplete;

    invoke-virtual {p2, v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->setView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/layout/AddressAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/AddressAutoComplete;->setSuggestionProvider(Lcom/google/android/finsky/layout/AddressSuggestionProvider;)V

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v6, v7}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040004

    invoke-virtual {v6, v7, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->setView(Landroid/view/View;)V

    move-object v0, v4

    check-cast v0, Landroid/widget/EditText;

    if-nez p4, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v5

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    if-ne v5, v6, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v5

    or-int/lit16 v5, v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    :cond_3
    move-object v4, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v6, v7}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040006

    invoke-virtual {v6, v7, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->setView(Landroid/view/View;)V

    move-object v2, v4

    check-cast v2, Landroid/widget/Spinner;

    new-instance v3, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getParentId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v6

    invoke-direct {v3, v2, v5, v6}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;-><init>(Landroid/widget/Spinner;Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressField;)V

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    const v7, 0x1090009

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->initAdapter(Landroid/content/Context;II)V

    # getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$200(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getCandidatesList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5, p3}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSpinnerList(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    # getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$300(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/Spinner;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdminAreaFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->STATE_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mAdminLabel:Ljava/lang/String;

    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_LABELS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const v2, 0x7f09002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/content/Context;

    const-string v0, "US"

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private getErrorMessageIdForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)I
    .locals 2
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    sget-object v0, Lcom/android/i18n/addressinput/AddressWidget$4;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f09002d

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_ERROR_MESSAGES:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mAdminLabel:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f09002e

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09002f

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    if-ne v0, v1, :cond_0

    const v0, 0x7f090030

    goto :goto_0

    :cond_0
    const v0, 0x7f090031

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Lcom/android/i18n/addressinput/AddressData;
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressData;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/i18n/addressinput/FormatInterpreter;

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget;->SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;-><init>(Lcom/android/i18n/addressinput/FormOptions;)V

    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/android/i18n/addressinput/AddressField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressField;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3, v0}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>(Lcom/android/i18n/addressinput/AddressData;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v3, v0}, Lcom/android/i18n/addressinput/FormController;->getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyForUpperLevelField(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t build key with parent field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". One of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the ancestor fields might be empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v3, v2}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private getViewErrors()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v6, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v6, v7, :cond_0

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getZipFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iput-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->ZIP:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iput-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/layout/AddressFieldsLayout;
    .param p3    # Lcom/android/i18n/addressinput/FormOptions;
    .param p4    # Lcom/android/i18n/addressinput/ClientCacheManager;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    iput-object p3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    new-instance v0, Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v0, p4}, Lcom/android/i18n/addressinput/CacheData;-><init>(Lcom/android/i18n/addressinput/ClientCacheManager;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/i18n/addressinput/FormController;

    new-instance v1, Lcom/android/i18n/addressinput/ClientData;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/i18n/addressinput/FormController;-><init>(Lcom/android/i18n/addressinput/ClientData;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    new-instance v0, Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;-><init>(Lcom/android/i18n/addressinput/FormOptions;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    new-instance v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;

    new-instance v1, Lcom/android/i18n/addressinput/FieldVerifier;

    new-instance v2, Lcom/android/i18n/addressinput/ClientData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v2, v3}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/DataSource;)V

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    return-void
.end method

.method private initializeDropDowns()V
    .locals 6

    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    return-void
.end method

.method private initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;Z)V
    .locals 9
    .param p1    # Lcom/android/i18n/addressinput/AddressData;
    .param p2    # Z

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v6, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressData;->getFieldValue(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v6, v7, :cond_3

    invoke-direct {p0, v5}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v2, v4}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSelectionByKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSelectionByKeyOrDisplayName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutAddressFields()V
    .locals 10

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/addressinput/AddressField;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v0, v6}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v0, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    const-string v3, ""

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v0, v6}, Lcom/android/i18n/addressinput/FormOptions;->isReadonly(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/AddressWidget;->createView(Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->setFields(Ljava/util/List;)V

    return-void
.end method

.method private setViewErrors(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/addressinput/AddressField;

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v6, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v6, v7, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v5

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setWidgetLocaleAndScript()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->getWidgetCompatibleLanguageCode(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormController;->setLanguageCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    :goto_0
    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-void

    :cond_0
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_0
.end method

.method private updateChildNodes(Landroid/widget/AdapterView;I)V
    .locals 5
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mId:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$400(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v3

    new-instance v4, Lcom/android/i18n/addressinput/AddressWidget$2;

    invoke-direct {v4, p0, v0}, Lcom/android/i18n/addressinput/AddressWidget$2;-><init>(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/addressinput/FormController;->requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0
.end method

.method private updateFields()V
    .locals 2

    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->buildFieldWidgets()V

    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->initializeDropDowns()V

    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->layoutAddressFields()V

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->setViewErrors(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->showFields()V

    return-void
.end method

.method private updateInputWidget(Lcom/android/i18n/addressinput/AddressField;)V
    .locals 4
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    # getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mParentId:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$500(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    if-ne v3, p1, :cond_0

    # getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mParentId:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$500(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSpinnerList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearErrorMessage()V
    .locals 7

    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v4, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;
    .locals 5
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->getErrorMessageIdForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getFieldName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAddressData()Lcom/android/i18n/addressinput/AddressData;
    .locals 10

    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v9, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/addressinput/AddressField;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v7, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v7

    sget-object v8, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v7, v8, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->getRegionDataKeyForValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v1, v2, v5}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v7

    return-object v7
.end method

.method public getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;
    .locals 4

    new-instance v1, Lcom/android/i18n/addressinput/AddressProblems;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressProblems;-><init>()V

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    invoke-virtual {v2, v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verify(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/FormOptions;->getHiddenFields()Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v2, v3}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getNameForField(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getFieldName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;
    .locals 2
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public hideUpperRightProgressBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->hideUpperRightProgressBar()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/i18n/addressinput/AddressWidget;->updateChildNodes(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public renderForm()V
    .locals 3

    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->setWidgetLocaleAndScript()V

    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    new-instance v2, Lcom/android/i18n/addressinput/AddressWidget$3;

    invoke-direct {v2, p0}, Lcom/android/i18n/addressinput/AddressWidget$3;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/addressinput/FormController;->requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->showProgressBar()V

    return-void
.end method

.method public renderFormWithSavedAddress(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 1
    .param p1    # Lcom/android/i18n/addressinput/AddressData;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->disableOneFieldMode()V

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const-string v7, "address_data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/addressinput/AddressData;

    iput-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;Z)V

    const-string v7, "address_error_fields"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "address_error_values"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v7

    aget-object v1, v7, v3

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->setViewErrors(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const-string v5, "address_data"

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getViewErrors()Ljava/util/Map;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v5, "address_error_fields"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v5, "address_error_values"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAddressFromSuggestion(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 3
    .param p1    # Lcom/android/i18n/addressinput/AddressData;

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v2}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/layout/AddressAutoComplete;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/finsky/layout/AddressAutoComplete;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->blockNextSuggestion()V

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/AddressAutoComplete;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFormOptions(Lcom/android/i18n/addressinput/FormOptions;)V
    .locals 0
    .param p1    # Lcom/android/i18n/addressinput/FormOptions;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    return-void
.end method

.method public setSuggestionProvider(Lcom/google/android/finsky/layout/AddressSuggestionProvider;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/finsky/layout/AddressAutoComplete;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/finsky/layout/AddressAutoComplete;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AddressAutoComplete;->setSuggestionProvider(Lcom/google/android/finsky/layout/AddressSuggestionProvider;)V

    :cond_0
    return-void
.end method

.method public showUpperRightProgressBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->showUpperRightProgressBar()V

    return-void
.end method

.method public updateWidgetOnCountryChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormController;->setCurrentCountry(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    goto :goto_0
.end method
