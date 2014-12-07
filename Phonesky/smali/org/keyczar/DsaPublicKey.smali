.class public Lorg/keyczar/DsaPublicKey;
.super Lorg/keyczar/KeyczarPublicKey;
.source "DsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;
    }
.end annotation


# instance fields
.field final g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final hash:[B

.field private jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

.field final p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final y:Ljava/lang/String;
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

    iput-object v0, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->g:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->q:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->p:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/DsaPublicKey;)Ljava/security/interfaces/DSAPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    return-object v0
.end method

.method private initializeHash()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [[B

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/keyczar/util/Util;->prefixHash([[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    iget-object v3, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v2, p1, p2, p3, p4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    iput-object v2, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/DsaPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lorg/keyczar/DsaPublicKey;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/DsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/DsaPublicKey;->initFromJson()V

    return-object v0
.end method


# virtual methods
.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;

    invoke-direct {v0, p0}, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;-><init>(Lorg/keyczar/DsaPublicKey;)V

    return-object v0
.end method

.method public hash()[B
    .locals 1

    iget-object v0, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    return-object v0
.end method

.method initFromJson()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/keyczar/DsaPublicKey;->y:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/keyczar/DsaPublicKey;->p:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/keyczar/DsaPublicKey;->q:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v0, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/keyczar/DsaPublicKey;->g:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p0, v3, v1, v2, v0}, Lorg/keyczar/DsaPublicKey;->initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0}, Lorg/keyczar/DsaPublicKey;->initializeHash()V

    return-void
.end method
