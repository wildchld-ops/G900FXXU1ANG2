.class public Lorg/keyczar/DsaPrivateKey;
.super Lorg/keyczar/KeyczarKey;
.source "DsaPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/DsaPrivateKey$DsaSigningStream;
    }
.end annotation


# instance fields
.field private jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;

.field private final publicKey:Lorg/keyczar/DsaPublicKey;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final x:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    iput-object v1, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    iput-object v1, p0, Lorg/keyczar/DsaPrivateKey;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/DsaPrivateKey;)Lorg/keyczar/DsaPublicKey;
    .locals 1
    .param p0    # Lorg/keyczar/DsaPrivateKey;

    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    return-object v0
.end method

.method static synthetic access$100(Lorg/keyczar/DsaPrivateKey;)Ljava/security/interfaces/DSAPrivateKey;
    .locals 1
    .param p0    # Lorg/keyczar/DsaPrivateKey;

    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;

    return-object v0
.end method

.method private initFromJson()Lorg/keyczar/DsaPrivateKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v7, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    invoke-virtual {v7}, Lorg/keyczar/DsaPublicKey;->initFromJson()V

    new-instance v6, Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/keyczar/DsaPrivateKey;->x:Ljava/lang/String;

    invoke-static {v7}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    iget-object v7, v7, Lorg/keyczar/DsaPublicKey;->p:Ljava/lang/String;

    invoke-static {v7}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    iget-object v7, v7, Lorg/keyczar/DsaPublicKey;->q:Ljava/lang/String;

    invoke-static {v7}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    iget-object v7, v7, Lorg/keyczar/DsaPublicKey;->g:Ljava/lang/String;

    invoke-static {v7}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/math/BigInteger;-><init>([B)V

    :try_start_0
    const-string v7, "DSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v5, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v5, v6, v3, v4, v1}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7

    check-cast v7, Ljava/security/interfaces/DSAPrivateKey;

    iput-object v7, p0, Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v7, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v7, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/DsaPrivateKey;
    .locals 3
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lorg/keyczar/DsaPrivateKey;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/DsaPrivateKey;

    invoke-direct {v0}, Lorg/keyczar/DsaPrivateKey;->initFromJson()Lorg/keyczar/DsaPrivateKey;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getPublic()Lorg/keyczar/KeyczarPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    return-object v0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;

    invoke-direct {v0, p0}, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;-><init>(Lorg/keyczar/DsaPrivateKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    sget-object v0, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    invoke-virtual {p0}, Lorg/keyczar/DsaPrivateKey;->getPublic()Lorg/keyczar/KeyczarPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/keyczar/KeyczarPublicKey;->hash()[B

    move-result-object v0

    return-object v0
.end method
