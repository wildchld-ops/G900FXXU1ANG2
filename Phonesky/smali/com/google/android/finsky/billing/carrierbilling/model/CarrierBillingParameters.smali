.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
.super Ljava/lang/Object;
.source "CarrierBillingParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$1;,
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    }
.end annotation


# instance fields
.field private final mCarrierApiVersion:I

.field private final mGetCredentialsUrl:Ljava/lang/String;

.field private final mGetProvisioningUrl:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPerTransactionCredentialsRequired:Z

.field private final mSendSubscriberInfoWithCarrierRequests:Z

.field private final mShowCarrierTos:Z


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$600(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$700(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCarrierApiVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    return v0
.end method

.method public getGetCredentialsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGetProvisioningUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public perTransactionCredentialsRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    return v0
.end method

.method public sendSubscriberInfoWithCarrierRequests()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    return v0
.end method

.method public showCarrierTos()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierBillingParameters:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  id                                   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  name                                 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  getProvisioningUrl                   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  getCredentialsUrl                    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  showCarrierTos                       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  carrierApiVersion                    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  perTransactionCredentialsRequired    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  sendSubscriberInfoWithCarrierRequests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
