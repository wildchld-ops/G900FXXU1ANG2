.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
.super Ljava/lang/Object;
.source "CarrierBillingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private carrierApiVersion:I

.field private getCredentialsUrl:Ljava/lang/String;

.field private getProvisioningUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private perTransactionCredentialsRequired:Z

.field private sendSubscriberInfoWithCarrierRequests:Z

.field private showCarrierTos:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$1;)V

    return-object v0
.end method

.method public setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I

    return-object p0
.end method

.method public setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z

    return-object p0
.end method

.method public setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z

    return-object p0
.end method

.method public setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z

    return-object p0
.end method
