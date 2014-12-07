.class public Lcom/google/android/finsky/billing/BillingLocator;
.super Ljava/lang/Object;
.source "BillingLocator.java"


# static fields
.field private static isInitialized:Z

.field private static sApplicationContext:Landroid/content/Context;

.field private static sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private static sDeviceInService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/finsky/billing/BillingLocator;->isInitialized:Z

    sput-boolean v0, Lcom/google/android/finsky/billing/BillingLocator;->sDeviceInService:Z

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/google/android/finsky/billing/BillingLocator;->sDeviceInService:Z

    return p0
.end method

.method public static createDcbApi()Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
    .locals 8

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    sget-object v5, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    sget-object v5, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    new-instance v3, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;

    invoke-direct {v3, v1}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;-><init>(Landroid/net/ConnectivityManager;)V

    new-instance v4, Lcom/google/android/finsky/remoting/RadioHttpClient;

    new-instance v5, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;

    sget-object v6, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5, v3}, Lcom/google/android/finsky/remoting/RadioHttpClient;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/google/android/finsky/remoting/RadioConnectionFactory;)V

    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v5, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v5}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    new-instance v6, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v6, v4}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v0, v5, v6}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-direct {v5, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;)V

    goto :goto_0
.end method

.method public static getBillingCountries()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v9, Lcom/google/android/finsky/billing/BillingPreferences;->BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v9}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    const-string v9, "\\}\\{"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v8, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "Got empty billing country string."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_3

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_4
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v9, v1

    if-ge v9, v14, :cond_5

    const-string v9, "Invalid country string: %s. Expected at least 2 parts, got %d."

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v2, v10, v12

    array-length v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-direct {v6}, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;-><init>()V

    aget-object v9, v1, v12

    iput-object v9, v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    iput-boolean v13, v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryCode:Z

    aget-object v9, v1, v13

    iput-object v9, v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryName:Ljava/lang/String;

    iput-boolean v13, v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryName:Z

    array-length v9, v1

    const/4 v10, 0x3

    if-lt v9, v10, :cond_7

    aget-object v9, v1, v14

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    aget-object v9, v1, v14

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid reducedBillingAddress flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v14

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    aget-object v9, v1, v14

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress:Z

    iput-boolean v13, v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasAllowsReducedBillingAddress:Z

    :cond_7
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarrierBillingStorage has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method

.method public static getDeviceIdFromTelephony()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLine1NumberFromTelephony()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    sget-object v2, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "BillingLocator has not been initialized."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static getSubscriberIdFromTelephony()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static initCarrierBillingStorage(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->setupServiceStateListener()V

    sget-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->init(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initSingleton()V
    .locals 2

    sget-boolean v0, Lcom/google/android/finsky/billing/BillingLocator;->isInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/billing/BillingLocator;->isInitialized:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    sget-object v1, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingLocator;->sCarrierBillingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BillingLocator already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setBillingCountries(Ljava/util/List;)V
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

    const/16 v5, 0x2c

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x31

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/google/android/finsky/billing/BillingPreferences;->BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_BILLING_COUNTRIES_REFRESH_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method private static setupServiceStateListener()V
    .locals 4

    sget-object v2, Lcom/google/android/finsky/billing/BillingLocator;->sApplicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/BillingLocator$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/BillingLocator$1;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method
