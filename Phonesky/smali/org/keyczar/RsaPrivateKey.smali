.class public Lorg/keyczar/RsaPrivateKey;
.super Lorg/keyczar/KeyczarKey;
.source "RsaPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;
    }
.end annotation


# instance fields
.field private final crtCoefficient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final primeExponentP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final primeExponentQ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final primeP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final primeQ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final privateExponent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final publicKey:Lorg/keyczar/RsaPublicKey;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->privateExponent:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeP:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeQ:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentP:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentQ:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->crtCoefficient:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/RsaPrivateKey;)Lorg/keyczar/RsaPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    return-object v0
.end method

.method static synthetic access$100(Lorg/keyczar/RsaPrivateKey;)Ljava/security/interfaces/RSAPrivateCrtKey;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    return-object v0
.end method

.method private initFromJson()Lorg/keyczar/RsaPrivateKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v1, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v1}, Lorg/keyczar/RsaPublicKey;->initFromJson()Lorg/keyczar/RsaPublicKey;

    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    iget-object v1, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    iget-object v1, v1, Lorg/keyczar/RsaPublicKey;->modulus:Ljava/lang/String;

    invoke-static {v1}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    iget-object v2, v2, Lorg/keyczar/RsaPublicKey;->publicExponent:Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/keyczar/RsaPrivateKey;->privateExponent:Ljava/lang/String;

    invoke-static {v3}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/keyczar/RsaPrivateKey;->primeP:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/keyczar/RsaPrivateKey;->primeQ:Ljava/lang/String;

    invoke-static {v5}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentP:Ljava/lang/String;

    invoke-static {v6}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentQ:Ljava/lang/String;

    invoke-static {v7}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lorg/keyczar/RsaPrivateKey;->crtCoefficient:Ljava/lang/String;

    invoke-static {v8}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v10, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v9

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v9}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/RsaPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lorg/keyczar/RsaPrivateKey;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/RsaPrivateKey;

    invoke-direct {v0}, Lorg/keyczar/RsaPrivateKey;->initFromJson()Lorg/keyczar/RsaPrivateKey;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;

    invoke-direct {v0, p0}, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;-><init>(Lorg/keyczar/RsaPrivateKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    sget-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->hash()[B

    move-result-object v0

    return-object v0
.end method
