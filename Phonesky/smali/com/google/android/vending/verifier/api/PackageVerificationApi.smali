.class public Lcom/google/android/vending/verifier/api/PackageVerificationApi;
.super Ljava/lang/Object;
.source "PackageVerificationApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;
    }
.end annotation


# direct methods
.method private static buildSha256Digest([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    .locals 2
    .param p0    # [B

    new-instance v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-direct {v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;-><init>()V

    iput-object p0, v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->sha256:[B

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha256:Z

    return-object v0
.end method

.method private static createFileInfo(Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;
    .locals 2
    .param p0    # Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;

    new-instance v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    invoke-direct {v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;-><init>()V

    iget-object v1, p0, Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->name:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->hasName:Z

    iget-object v1, p0, Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;->digest:[B

    invoke-static {v1}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->buildSha256Digest([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    return-object v0
.end method

.method private static createResource(Landroid/net/Uri;Ljava/net/InetAddress;Landroid/net/Uri;I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .locals 4
    .param p0    # Landroid/net/Uri;
    .param p1    # Ljava/net/InetAddress;
    .param p2    # Landroid/net/Uri;
    .param p3    # I

    const/4 v3, 0x1

    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->url:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasUrl:Z

    iput p3, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->type:I

    iput-boolean v3, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasType:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->referrer:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasReferrer:Z

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->remoteIp:[B

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasRemoteIp:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static createSignatureInfo([[B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
    .locals 7
    .param p0    # [[B

    const/4 v6, 0x1

    new-instance v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-direct {v3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;-><init>()V

    array-length v4, p0

    new-array v4, v4, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    iput-object v4, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->certificateChain:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    new-instance v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    invoke-direct {v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;-><init>()V

    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;-><init>()V

    aget-object v4, p0, v2

    iput-object v4, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate:[B

    iput-boolean v6, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate:Z

    new-array v4, v6, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iput-object v4, v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    iget-object v4, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->certificateChain:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    aput-object v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static reportUserDecision(I[BLcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 3
    .param p0    # I
    .param p1    # [B
    .param p2    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token:[B

    iput-boolean v2, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken:Z

    :cond_0
    iput p0, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision:I

    iput-boolean v2, v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision:Z

    new-instance v0, Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;

    const-string v2, "https://safebrowsing.google.com/safebrowsing/clientreport/download-stat"

    invoke-direct {v0, v2, p2, v1}, Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v2

    return-object v2
.end method

.method public static verifyApp([BJLjava/lang/String;Ljava/lang/Integer;[[B[Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;Landroid/net/Uri;Landroid/net/Uri;Ljava/net/InetAddress;Ljava/net/InetAddress;[Ljava/lang/String;[[BLjava/lang/String;JLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 11
    .param p0    # [B
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/Integer;
    .param p5    # [[B
    .param p6    # [Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;
    .param p7    # Landroid/net/Uri;
    .param p8    # Landroid/net/Uri;
    .param p9    # Ljava/net/InetAddress;
    .param p10    # Ljava/net/InetAddress;
    .param p11    # [Ljava/lang/String;
    .param p12    # [[B
    .param p13    # Ljava/lang/String;
    .param p14    # J
    .param p17    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "[[B[",
            "Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "[",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    new-instance v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    invoke-direct {v8}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;-><init>()V

    if-nez p3, :cond_0

    if-eqz p4, :cond_4

    :cond_0
    new-instance v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    invoke-direct {v3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;-><init>()V

    if-eqz p3, :cond_1

    iput-object p3, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasPackageName:Z

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->versionCode:I

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasVersionCode:Z

    :cond_2
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    array-length v9, v0

    new-array v9, v9, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    iput-object v9, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p6

    array-length v9, v0

    if-ge v4, v9, :cond_3

    iget-object v9, v3, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    aget-object v10, p6, v4

    invoke-static {v10}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->createFileInfo(Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    move-result-object v10

    aput-object v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-object v3, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    :cond_4
    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    array-length v9, v0

    if-lez v9, :cond_5

    invoke-static/range {p5 .. p5}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->createSignatureInfo([[B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url:Ljava/lang/String;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUrl:Z

    if-eqz p8, :cond_a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    iput-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v9}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->createResource(Landroid/net/Uri;Ljava/net/InetAddress;Landroid/net/Uri;I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    move-result-object v5

    iget-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    if-eqz p8, :cond_6

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-static {v0, v1, v9, v10}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->createResource(Landroid/net/Uri;Ljava/net/InetAddress;Landroid/net/Uri;I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    move-result-object v6

    iget-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    const/4 v10, 0x1

    aput-object v6, v9, v10

    :cond_6
    if-eqz p11, :cond_7

    move-object/from16 v0, p11

    iput-object v0, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    :cond_7
    if-eqz p12, :cond_8

    move-object/from16 v0, p12

    array-length v9, v0

    if-lez v9, :cond_8

    invoke-static/range {p12 .. p12}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->createSignatureInfo([[B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    :cond_8
    iput-wide p1, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length:J

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLength:Z

    invoke-static {p0}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->buildSha256Digest([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    const/4 v9, 0x2

    iput v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType:I

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType:Z

    if-eqz p13, :cond_9

    move-object/from16 v0, p13

    iput-object v0, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale:Ljava/lang/String;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale:Z

    :cond_9
    move-wide/from16 v0, p14

    iput-wide v0, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId:J

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId:Z

    new-instance v7, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;

    const-string v9, "https://safebrowsing.google.com/safebrowsing/clientreport/download"

    move-object/from16 v0, p16

    move-object/from16 v1, p17

    invoke-direct {v7, v9, v0, v1, v8}, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v9

    return-object v9

    :cond_a
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    iput-object v9, v8, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    goto :goto_1
.end method
