.class public Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;
.super Ljava/lang/Object;
.source "CarrierParamsAction.java"


# instance fields
.field private final mConfig:Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->mConfig:Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    return-void
.end method


# virtual methods
.method createCarrierBillingParameters(Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 5
    .param p1    # Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v2, "Carrier billing config is null. Device is not targeted for DCB 2."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    invoke-direct {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;-><init>()V

    iget-object v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->provisioningUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->credentialsUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->tosRequired:Z

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->apiVersion:I

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->perTransactionCredentialsRequired:Z

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->sendSubscriberIdWithCarrierBillingRequests:Z

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Missing fields for creating carrier billing parameters"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->mConfig:Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->createCarrierBillingParameters(Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setParams(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;)V

    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearParams()V

    goto :goto_0
.end method
