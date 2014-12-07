.class public abstract Lcom/google/android/vending/verifier/api/BaseVerificationRequest;
.super Lcom/android/volley/Request;
.source "BaseVerificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mRequest:Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$ErrorListener;",
            "TU;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->mRequest:Lcom/google/protobuf/nano/MessageNano;

    return-void
.end method

.method private makeUserAgentString()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Android-Finsky/%s (versionCode=%d,sdk=%d,device=%s,hardware=%s,product=%s,build=%s:%s)"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v10, v12

    const/4 v11, 0x1

    iget v12, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    aput-object v5, v10, v11

    const/4 v11, 0x5

    aput-object v7, v10, v11

    const/4 v11, 0x6

    aput-object v0, v10, v11

    const/4 v11, 0x7

    aput-object v1, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v4

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    invoke-direct {p0}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->makeUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->mRequest:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/x-protobuffer"

    return-object v0
.end method
