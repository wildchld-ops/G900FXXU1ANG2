.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
.super Ljava/lang/Object;
.source "CarrierBillingCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apiVersion:I

.field private credentials:Ljava/lang/String;

.field private expirationTime:J

.field private invalidPassword:Z

.field private isProvisioned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->apiVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->credentials:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->expirationTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->isProvisioned:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->invalidPassword:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$1;)V

    return-object v0
.end method

.method public setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->apiVersion:I

    return-object p0
.end method

.method public setCredentials(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->credentials:Ljava/lang/String;

    return-object p0
.end method

.method public setExpirationTime(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->expirationTime:J

    return-object p0
.end method

.method public setInvalidPassword(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->invalidPassword:Z

    return-object p0
.end method

.method public setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->isProvisioned:Z

    return-object p0
.end method
