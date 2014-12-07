.class public Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;
.super Ljava/lang/Object;
.source "CarrierBillingUtils.java"


# direct methods
.method public static addPrepareOrBillingProfileParams(ZZLjava/util/Map;)V
    .locals 1
    .param p0    # Z
    .param p1    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Util;->addPrepareOrBillingProfileParams(ZLjava/util/Map;)V

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Util;->addPrepareOrBillingProfileParams(ZLjava/util/Map;)V

    return-void
.end method

.method public static areCredentialsValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .locals 11
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v8

    :cond_0
    sget-object v7, Lcom/google/android/finsky/config/G;->vendingCarrierCredentialsBufferMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v9

    sub-long v1, v9, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1
.end method

.method private static getInvalidEntries([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Ljava/util/ArrayList;
    .locals 10
    .param p0    # [Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    iget v4, v1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v6, "InputValidationError that can\'t be edited: type=%d, message=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->errorMessage:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRetriableErrors(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Ljava/util/ArrayList;
    .locals 3
    .param p0    # Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->getInvalidEntries([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimIdentifier()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getDeviceIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "invalid_sim_id"

    goto :goto_0
.end method

.method public static initializeCarrierBillingParams(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;

    invoke-direct {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;-><init>(Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;)V

    new-instance v3, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;

    invoke-direct {v3, p1, p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;-><init>(ZLandroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->run(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCarrierBillingConfig()Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public static initializeCarrierBillingProvisioning(Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isCarrierBillingParamsAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->run(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static initializeCarrierBillingStorage(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initializeStorageAndParams(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isCarrierBillingParamsAvailable()Z
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDcb30()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "CarrierBillingStorage is null, fallback to 3.0"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .locals 4
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string v2, "CarrierBillingStorage is null. Return false"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v1

    goto :goto_0
.end method
