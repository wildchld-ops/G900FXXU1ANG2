.class public Lorg/keyczar/HmacKey;
.super Lorg/keyczar/KeyczarKey;
.source "HmacKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/HmacKey$HmacStream;
    }
.end annotation


# instance fields
.field private final hash:[B

.field private hmacKey:Ljavax/crypto/SecretKey;

.field private final hmacKeyString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hash:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hmacKeyString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hash:[B

    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hmacKeyString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/keyczar/HmacKey;->initJceKey([B)V

    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/HmacKey;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p0    # Lorg/keyczar/HmacKey;

    iget-object v0, p0, Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method static generate()Lorg/keyczar/HmacKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v0, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v0}, Lorg/keyczar/DefaultKeyType;->defaultSize()I

    move-result v0

    invoke-static {v0}, Lorg/keyczar/HmacKey;->generate(I)Lorg/keyczar/HmacKey;

    move-result-object v0

    return-object v0
.end method

.method static generate(I)Lorg/keyczar/HmacKey;
    .locals 2
    .param p0    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/HmacKey;

    div-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Lorg/keyczar/util/Util;->rand(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/HmacKey;-><init>([B)V

    return-object v0
.end method

.method private initJceKey([B)V
    .locals 4
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;

    const/4 v0, 0x1

    new-array v0, v0, [[B

    aput-object p1, v0, v3

    invoke-static {v0}, Lorg/keyczar/util/Util;->hash([[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/HmacKey;->hash:[B

    iget-object v2, p0, Lorg/keyczar/HmacKey;->hash:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/HmacKey;
    .locals 3
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lorg/keyczar/HmacKey;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/HmacKey;

    invoke-virtual {v0}, Lorg/keyczar/HmacKey;->initFromJson()V

    return-object v0
.end method


# virtual methods
.method getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/HmacKey$HmacStream;

    invoke-direct {v0, p0}, Lorg/keyczar/HmacKey$HmacStream;-><init>(Lorg/keyczar/HmacKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    sget-object v0, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    iget-object v0, p0, Lorg/keyczar/HmacKey;->hash:[B

    return-object v0
.end method

.method initFromJson()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/HmacKey;->hmacKeyString:Ljava/lang/String;

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/HmacKey;->initJceKey([B)V

    return-void
.end method
