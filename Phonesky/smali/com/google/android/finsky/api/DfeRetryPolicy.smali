.class public Lcom/google/android/finsky/api/DfeRetryPolicy;
.super Lcom/android/volley/DefaultRetryPolicy;
.source "DfeRetryPolicy.java"


# instance fields
.field private final mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private mHadAuthException:Z


# direct methods
.method public constructor <init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    iput-object p4, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApiContext;)V
    .locals 3

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeRequestTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeBackoffMultipler:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    iput-object p1, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-void
.end method


# virtual methods
.method public retry(Lcom/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mHadAuthException:Z

    if-eqz v0, :cond_0

    throw p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mHadAuthException:Z

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRetryPolicy;->mDfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/volley/DefaultRetryPolicy;->retry(Lcom/android/volley/VolleyError;)V

    return-void
.end method
