.class public Lorg/keyczar/AesKey;
.super Lorg/keyczar/KeyczarKey;
.source "AesKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/AesKey$AesStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_MODE:Lorg/keyczar/enums/CipherMode;


# instance fields
.field private aesKey:Ljavax/crypto/SecretKey;

.field private final aesKeyString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final hash:[B

.field private final hmacKey:Lorg/keyczar/HmacKey;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final mode:Lorg/keyczar/enums/CipherMode;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    sput-object v0, Lorg/keyczar/AesKey;->DEFAULT_MODE:Lorg/keyczar/enums/CipherMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/AesKey;->hash:[B

    iput-object v1, p0, Lorg/keyczar/AesKey;->aesKeyString:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    iput-object v1, p0, Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;

    return-void
.end method

.method public constructor <init>([BLorg/keyczar/HmacKey;)V
    .locals 1
    .param p1    # [B
    .param p2    # Lorg/keyczar/HmacKey;
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

    iput-object v0, p0, Lorg/keyczar/AesKey;->hash:[B

    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/AesKey;->aesKeyString:Ljava/lang/String;

    sget-object v0, Lorg/keyczar/AesKey;->DEFAULT_MODE:Lorg/keyczar/enums/CipherMode;

    iput-object v0, p0, Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;

    iput-object p2, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    invoke-direct {p0, p1}, Lorg/keyczar/AesKey;->initJceKey([B)V

    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/AesKey;)Lorg/keyczar/enums/CipherMode;
    .locals 1
    .param p0    # Lorg/keyczar/AesKey;

    iget-object v0, p0, Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;

    return-object v0
.end method

.method static synthetic access$100(Lorg/keyczar/AesKey;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p0    # Lorg/keyczar/AesKey;

    iget-object v0, p0, Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method static synthetic access$200(Lorg/keyczar/AesKey;)Lorg/keyczar/HmacKey;
    .locals 1
    .param p0    # Lorg/keyczar/AesKey;

    iget-object v0, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    return-object v0
.end method

.method static generate(I)Lorg/keyczar/AesKey;
    .locals 3
    .param p0    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/AesKey;

    div-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Lorg/keyczar/util/Util;->rand(I)[B

    move-result-object v1

    invoke-static {}, Lorg/keyczar/HmacKey;->generate()Lorg/keyczar/HmacKey;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/keyczar/AesKey;-><init>([BLorg/keyczar/HmacKey;)V

    return-object v0
.end method

.method private initJceKey([B)V
    .locals 5
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    invoke-virtual {v3}, Lorg/keyczar/HmacKey;->getEncoded()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/keyczar/util/Util;->hash([[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/AesKey;->hash:[B

    iget-object v2, p0, Lorg/keyczar/AesKey;->hash:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/AesKey;
    .locals 3
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lorg/keyczar/AesKey;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/AesKey;

    iget-object v1, v0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    invoke-virtual {v1}, Lorg/keyczar/HmacKey;->initFromJson()V

    iget-object v1, v0, Lorg/keyczar/AesKey;->aesKeyString:Ljava/lang/String;

    invoke-static {v1}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/AesKey;->initJceKey([B)V

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

    new-instance v0, Lorg/keyczar/AesKey$AesStream;

    invoke-direct {v0, p0}, Lorg/keyczar/AesKey$AesStream;-><init>(Lorg/keyczar/AesKey;)V

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    iget-object v0, p0, Lorg/keyczar/AesKey;->hash:[B

    return-object v0
.end method
