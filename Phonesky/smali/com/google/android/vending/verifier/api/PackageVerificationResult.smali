.class public Lcom/google/android/vending/verifier/api/PackageVerificationResult;
.super Ljava/lang/Object;
.source "PackageVerificationResult.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final moreInfoUri:Landroid/net/Uri;

.field public final token:[B

.field public final verdict:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->verdict:I

    iput-object p2, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->moreInfoUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->token:[B

    return-void
.end method

.method public static fromResponse(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;)Lcom/google/android/vending/verifier/api/PackageVerificationResult;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->moreInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->description:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    new-instance v3, Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    iget v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->verdict:I

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->token:[B

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/google/android/vending/verifier/api/PackageVerificationResult;-><init>(ILjava/lang/String;Landroid/net/Uri;[B)V

    return-object v3
.end method
