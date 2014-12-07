.class public Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;
.super Ljava/lang/Object;
.source "DfeApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/DfeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GaiaAuthParameters"
.end annotation


# instance fields
.field private final mGaiaAuthOptOut:Z

.field private final mLastAuthTimestamp:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;->mLastAuthTimestamp:J

    iput-boolean p3, p0, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;->mGaiaAuthOptOut:Z

    return-void
.end method


# virtual methods
.method public addToRequest(Lcom/google/android/finsky/api/DfeApi$DfePostRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/DfeApi$DfePostRequest",
            "<*>;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;->mLastAuthTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "pclats"

    iget-wide v1, p0, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;->mLastAuthTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;->mGaiaAuthOptOut:Z

    if-eqz v0, :cond_1

    const-string v0, "pcauth"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
