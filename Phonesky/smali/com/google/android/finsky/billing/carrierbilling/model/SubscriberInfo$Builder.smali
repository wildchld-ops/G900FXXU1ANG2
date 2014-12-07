.class public Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
.super Ljava/lang/Object;
.source "SubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->city:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->country:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;)V

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address1:Ljava/lang/String;

    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address2:Ljava/lang/String;

    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->city:Ljava/lang/String;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->postalCode:Ljava/lang/String;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->state:Ljava/lang/String;

    return-object p0
.end method
