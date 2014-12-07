.class public Lcom/google/android/finsky/api/DfeResponseVerifier;
.super Ljava/lang/Object;
.source "DfeResponseVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/DfeResponseVerifier$1;,
        Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
    }
.end annotation


# static fields
.field private static final FALLBACK_KEYS_FILES_SUBDIR:Ljava/lang/String;

.field private static final PROD_KEYS_ASSETS_SUBDIR:Ljava/lang/String;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;

.field private static sFallbackReader:Lorg/keyczar/interfaces/KeyczarReader;

.field private static sFallbackReaderInitialized:Z

.field private static sProdReader:Lorg/keyczar/interfaces/KeyczarReader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNonce:[B

.field private mNonceInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dfe-response-auth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/finsky/api/DfeResponseVerifier;->PROD_KEYS_ASSETS_SUBDIR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dfe-response-auth-dev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/finsky/api/DfeResponseVerifier;->FALLBACK_KEYS_FILES_SUBDIR:Ljava/lang/String;

    :try_start_0
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/google/android/finsky/api/DfeResponseVerifier;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not initialize SecureRandom, SHA1PRNG not supported. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mNonce:[B

    iput-object p1, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static extractResponseSignature(Ljava/lang/String;)[B
    .locals 9
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "No signing response found."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;

    const-string v6, "No signing response found."

    invoke-direct {v5, v6, v8}, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeResponseVerifier$1;)V

    throw v5

    :cond_0
    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "signature="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xb

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    return-object v5

    :cond_2
    new-instance v5, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature not found in response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeResponseVerifier$1;)V

    throw v5
.end method

.method private static declared-synchronized getFallbackReader(Landroid/content/Context;)Lorg/keyczar/interfaces/KeyczarReader;
    .locals 4
    .param p0    # Landroid/content/Context;

    const-class v2, Lcom/google/android/finsky/api/DfeResponseVerifier;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/google/android/finsky/api/DfeResponseVerifier;->sFallbackReaderInitialized:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v3, Lcom/google/android/finsky/api/DfeResponseVerifier;->FALLBACK_KEYS_FILES_SUBDIR:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/keyczar/KeyczarFileReader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/keyczar/KeyczarFileReader;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/finsky/api/DfeResponseVerifier;->sFallbackReader:Lorg/keyczar/interfaces/KeyczarReader;

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/finsky/api/DfeResponseVerifier;->sFallbackReaderInitialized:Z

    :cond_1
    sget-object v1, Lcom/google/android/finsky/api/DfeResponseVerifier;->sFallbackReader:Lorg/keyczar/interfaces/KeyczarReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getProdReader(Landroid/content/Context;)Lorg/keyczar/interfaces/KeyczarReader;
    .locals 4
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/google/android/finsky/api/DfeResponseVerifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/api/DfeResponseVerifier;->sProdReader:Lorg/keyczar/interfaces/KeyczarReader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/utils/AndroidKeyczarReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/api/DfeResponseVerifier;->PROD_KEYS_ASSETS_SUBDIR:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/utils/AndroidKeyczarReader;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/api/DfeResponseVerifier;->sProdReader:Lorg/keyczar/interfaces/KeyczarReader;

    :cond_0
    sget-object v0, Lcom/google/android/finsky/api/DfeResponseVerifier;->sProdReader:Lorg/keyczar/interfaces/KeyczarReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private internalVerify(Lorg/keyczar/interfaces/KeyczarReader;[B[BLjava/lang/String;)Z
    .locals 8
    .param p1    # Lorg/keyczar/interfaces/KeyczarReader;
    .param p2    # [B
    .param p3    # [B
    .param p4    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Lorg/keyczar/Verifier;

    invoke-direct {v3, p1}, Lorg/keyczar/Verifier;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    array-length v5, p2

    array-length v6, p3

    add-int/2addr v5, v6

    new-array v0, v5, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p2

    invoke-static {p2, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    array-length v6, p2

    array-length v7, p3

    invoke-static {p3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4}, Lcom/google/android/finsky/api/DfeResponseVerifier;->extractResponseSignature(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/keyczar/Verifier;->verify([B[B)Z
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string v5, "Keyczar exception during signature verification: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getSignatureRequest()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/api/DfeResponseVerifier;->SECURE_RANDOM:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;

    const-string v1, "Uninitialized SecureRandom."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeResponseVerifier$1;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mNonceInitialized:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/api/DfeResponseVerifier;->SECURE_RANDOM:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mNonce:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mNonceInitialized:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mNonce:[B

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public verify([BLjava/lang/String;)V
    .locals 6
    .param p1    # [B
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeResponseVerifier;->getProdReader(Landroid/content/Context;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mNonce:[B

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/google/android/finsky/api/DfeResponseVerifier;->internalVerify(Lorg/keyczar/interfaces/KeyczarReader;[B[BLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeResponseVerifier;->getFallbackReader(Landroid/content/Context;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Retry verification using fallback keys."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeResponseVerifier;->mNonce:[B

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/google/android/finsky/api/DfeResponseVerifier;->internalVerify(Lorg/keyczar/interfaces/KeyczarReader;[B[BLjava/lang/String;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/google/android/finsky/utils/DfeLog;->DEBUG:Z

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "Response signature verified: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez v1, :cond_3

    new-instance v2, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;

    const-string v3, "Response signature mismatch."

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeResponseVerifier$1;)V

    throw v2

    :cond_3
    return-void
.end method
