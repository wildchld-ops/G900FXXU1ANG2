.class public Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;
.super Ljava/lang/Object;
.source "AccountAssociationFactoryImpl.java"


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mPiiTosVersion:Ljava/lang/String;

.field private final mRequestAddress:Z

.field private final mSmsAddress:Ljava/lang/String;

.field private final mSmsPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsPrefix:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mPiiTosVersion:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mRequestAddress:Z

    return-void
.end method


# virtual methods
.method public createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;
    .locals 6

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mPiiTosVersion:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mRequestAddress:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
