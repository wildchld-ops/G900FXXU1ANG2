.class public Lcom/google/android/finsky/api/DfeApi$IabParameters;
.super Ljava/lang/Object;
.source "DfeApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/DfeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IabParameters"
.end annotation


# instance fields
.field private final mApiVersion:I

.field private final mDeveloperPayload:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageSignatureHash:Ljava/lang/String;

.field private final mPackageVersion:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mApiVersion:I

    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mPackageSignatureHash:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mPackageVersion:I

    iput-object p5, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mDeveloperPayload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addToRequest(Lcom/google/android/finsky/api/DfeApi$DfePostRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/DfeApi$DfePostRequest",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "bav"

    iget v1, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mApiVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shpn"

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shh"

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mPackageSignatureHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shvc"

    iget v1, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mPackageVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "payload"

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi$IabParameters;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
