.class public Lorg/keyczar/RsaPublicKey;
.super Lorg/keyczar/KeyczarPublicKey;
.source "RsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/RsaPublicKey$RsaStream;
    }
.end annotation


# instance fields
.field private final hash:[B

.field private jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

.field final modulus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final padding:Lorg/keyczar/enums/RsaPadding;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final publicExponent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarPublicKey;-><init>(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    iput-object v1, p0, Lorg/keyczar/RsaPublicKey;->publicExponent:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPublicKey;->modulus:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPublicKey;->padding:Lorg/keyczar/enums/RsaPadding;

    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/RsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method private initializeHash()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/keyczar/RsaPublicKey;->getPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v1}, Lorg/keyczar/enums/RsaPadding;->computeFullHash(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    iget-object v2, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v1, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    iput-object v2, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/RsaPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v1

    sget-object v2, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/keyczar/exceptions/UnsupportedTypeException;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/keyczar/exceptions/UnsupportedTypeException;-><init>(Lorg/keyczar/interfaces/KeyType;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->initFromJson()Lorg/keyczar/RsaPublicKey;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getPadding()Lorg/keyczar/enums/RsaPadding;
    .locals 2

    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->padding:Lorg/keyczar/enums/RsaPadding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->padding:Lorg/keyczar/enums/RsaPadding;

    sget-object v1, Lorg/keyczar/enums/RsaPadding;->OAEP:Lorg/keyczar/enums/RsaPadding;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lorg/keyczar/enums/RsaPadding;->OAEP:Lorg/keyczar/enums/RsaPadding;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/keyczar/enums/RsaPadding;->PKCS:Lorg/keyczar/enums/RsaPadding;

    goto :goto_0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/RsaPublicKey$RsaStream;

    invoke-direct {v0, p0}, Lorg/keyczar/RsaPublicKey$RsaStream;-><init>(Lorg/keyczar/RsaPublicKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    sget-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method public hash()[B
    .locals 1

    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    return-object v0
.end method

.method initFromJson()Lorg/keyczar/RsaPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->modulus:Ljava/lang/String;

    invoke-static {v0}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey;->publicExponent:Ljava/lang/String;

    invoke-static {v1}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/keyczar/RsaPublicKey;->initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0}, Lorg/keyczar/RsaPublicKey;->initializeHash()V

    return-object p0
.end method
