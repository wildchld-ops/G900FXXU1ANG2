.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
.super Ljava/lang/Object;
.source "CarrierBillingProvisioning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accountType:Ljava/lang/String;

.field private addressSnippet:Ljava/lang/String;

.field private apiVersion:I

.field private country:Ljava/lang/String;

.field private credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

.field private encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

.field private isProvisioned:Z

.field private passwordForgotUrl:Ljava/lang/String;

.field private passwordPrompt:Ljava/lang/String;

.field private passwordRequired:Z

.field private provisioningId:Ljava/lang/String;

.field private subscriberCurrency:Ljava/lang/String;

.field private subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

.field private tosUrl:Ljava/lang/String;

.field private tosVersion:Ljava/lang/String;

.field private transactionLimit:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->apiVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->isProvisioned:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordRequired:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordForgotUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->addressSnippet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->provisioningId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->tosUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->tosVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->subscriberCurrency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->transactionLimit:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$1;)V

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public setAddressSnippet(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->addressSnippet:Ljava/lang/String;

    return-object p0
.end method

.method public setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->apiVersion:I

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    return-object p0
.end method

.method public setEncryptedSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    return-object p0
.end method

.method public setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->isProvisioned:Z

    return-object p0
.end method

.method public setPasswordForgotUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordForgotUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPasswordPrompt(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordRequired:Z

    return-object p0
.end method

.method public setProvisioningId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->provisioningId:Ljava/lang/String;

    return-object p0
.end method

.method public setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->subscriberCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public setSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    return-object p0
.end method

.method public setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->tosUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTosVersion(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->tosVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setTransactionLimit(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->transactionLimit:J

    return-object p0
.end method
