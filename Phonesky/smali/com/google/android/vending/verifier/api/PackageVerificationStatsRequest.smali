.class public Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;
.super Lcom/google/android/vending/verifier/api/BaseVerificationRequest;
.source "PackageVerificationStatsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/vending/verifier/api/BaseVerificationRequest",
        "<",
        "Lcom/android/volley/NetworkResponse;",
        "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/volley/Response$ErrorListener;
    .param p3    # Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/protobuf/nano/MessageNano;)V

    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1    # Lcom/android/volley/NetworkResponse;

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/volley/NetworkResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;->deliverResponse(Lcom/android/volley/NetworkResponse;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 1
    .param p1    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/android/volley/NetworkResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
