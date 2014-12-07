.class public Lcom/google/android/vending/verifier/api/PackageVerificationRequest;
.super Lcom/google/android/vending/verifier/api/BaseVerificationRequest;
.source "PackageVerificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/vending/verifier/api/BaseVerificationRequest",
        "<",
        "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
        "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .param p4    # Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/protobuf/nano/MessageNano;)V

    iput-object p2, p0, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;->mListener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V
    .locals 1
    .param p1    # Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    iget-object v0, p0, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;->deliverResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .param p1    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->parseFrom([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->fromResponse(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;)Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
