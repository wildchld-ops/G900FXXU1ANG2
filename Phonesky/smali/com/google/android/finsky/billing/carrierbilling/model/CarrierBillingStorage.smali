.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
.super Ljava/lang/Object;
.source "CarrierBillingStorage.java"


# instance fields
.field private final mCurrentSimIdentifier:Ljava/lang/String;

.field private volatile mIsInit:Z

.field private final mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->getSimIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v1, "carrier_billing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {v1, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    return-void
.end method

.method private booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getParamsKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "params"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private integerToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private longToString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private stringToLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearCredentials()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v1, "credentials"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public clearParams()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public clearProvisioning()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v1, "provisioning"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Attempt to fetch credentials when key store isn\'t ready."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v7, "credentials"

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;-><init>()V

    const-string v6, "credentials"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setCredentials(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v1

    const-string v6, "api_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    :cond_2
    const-string v6, "expiration_time"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setExpirationTime(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    :cond_3
    const-string v6, "is_provisioned"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    :cond_4
    const-string v6, "invalid_password"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setInvalidPassword(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v6

    goto :goto_0
.end method

.method public getCurrentSimIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Attempt to fetch params when key store isn\'t ready."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;-><init>()V

    const-string v6, "carrier_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "carrier_name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "get_provisioning_url"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "get_credentials_url"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v0

    const-string v6, "carrier_api_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    :cond_2
    const-string v6, "show_carrier_tos"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    :cond_3
    const-string v6, "per_transaction_credentials_required"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    :cond_4
    const-string v6, "per_transaction_credentials_required"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .locals 15

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Attempt to fetch provisioning when key store isn\'t ready."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    iget-object v13, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v14, "provisioning"

    invoke-virtual {v13, v14}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    if-nez v12, :cond_2

    if-eqz v3, :cond_1

    new-instance v13, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v13

    :goto_0
    return-object v13

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    const-string v13, "id"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setProvisioningId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "tos_url"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "tos_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosVersion(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "subscriber_currency"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "account_type"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "password_prompt"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordPrompt(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "password_forgot_url"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordForgotUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "address_snippet"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAddressSnippet(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "country"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    const-string v13, "api_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    :cond_3
    const-string v13, "is_provisioned"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    :cond_4
    const-string v13, "transaction_limit"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTransactionLimit(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    :cond_5
    const-string v13, "password_required"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    :cond_6
    const-string v13, "subscriber_token"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->fromObfuscatedString(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v1, v10}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    :cond_7
    new-instance v14, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {v14}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;-><init>()V

    const-string v13, "encrypted_message"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_key"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setEncryptedKey(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_signature"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_init_vector"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setInitVector(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v5

    const-string v13, "encrypted_google_key_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setGoogleKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    :cond_8
    const-string v13, "encrypted_carrier_key_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setCarrierKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    :cond_9
    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public init(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->load(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    return v0
.end method

.method public setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "credentials"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expiration_time"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->longToString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_provisioned"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->isProvisioned()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "invalid_password"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->invalidPassword()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v2, "credentials"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method setInit(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    return-void
.end method

.method public setParams(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "carrier_id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "carrier_name"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "get_provisioning_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "get_credentials_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetCredentialsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "show_carrier_tos"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->showCarrierTos()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "carrier_api_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "per_transaction_credentials_required"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->perTransactionCredentialsRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "send_subscriber_info_with_carrier_requests"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->sendSubscriberInfoWithCarrierRequests()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "api_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getApiVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_provisioned"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getProvisioningId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tos_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tos_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "subscriber_currency"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "transaction_limit"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTransactionLimit()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->longToString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "account_type"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "subscriber_token"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->toObfuscatedString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "password_required"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isPasswordRequired()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "password_prompt"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "password_forgot_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordForgotUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "address_snippet"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "country"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "encrypted_message"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encrypted_key"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encrypted_signature"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encrypted_init_vector"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encrypted_carrier_key_version"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encrypted_google_key_version"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v4, "provisioning"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
