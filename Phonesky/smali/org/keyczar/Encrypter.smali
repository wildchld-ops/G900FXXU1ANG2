.class public Lorg/keyczar/Encrypter;
.super Lorg/keyczar/Keyczar;
.source "Encrypter.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;


# instance fields
.field private final ENCRYPT_QUEUE:Lorg/keyczar/StreamQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamQueue",
            "<",
            "Lorg/keyczar/interfaces/EncryptingStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/keyczar/Encrypter;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/keyczar/Encrypter;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 1
    .param p1    # Lorg/keyczar/interfaces/KeyczarReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/keyczar/Keyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    new-instance v0, Lorg/keyczar/StreamQueue;

    invoke-direct {v0}, Lorg/keyczar/StreamQueue;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Encrypter;->ENCRYPT_QUEUE:Lorg/keyczar/StreamQueue;

    return-void
.end method


# virtual methods
.method public ciphertextSize(I)I
    .locals 6
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v4, p0, Lorg/keyczar/Encrypter;->ENCRYPT_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v4}, Lorg/keyczar/StreamQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/EncryptingStream;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/keyczar/Encrypter;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v4, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v4}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {v1}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/EncryptingStream;

    :cond_1
    invoke-interface {v0}, Lorg/keyczar/interfaces/EncryptingStream;->getSigningStream()Lorg/keyczar/interfaces/SigningStream;

    move-result-object v3

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/EncryptingStream;->maxOutputSize(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-interface {v3}, Lorg/keyczar/interfaces/SigningStream;->digestSize()I

    move-result v5

    add-int v2, v4, v5

    iget-object v4, p0, Lorg/keyczar/Encrypter;->ENCRYPT_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v4, v0}, Lorg/keyczar/StreamQueue;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/keyczar/Encrypter;->encrypt([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1    # Ljava/nio/ByteBuffer;
    .param p2    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/16 v11, 0x400

    sget-object v6, Lorg/keyczar/Encrypter;->LOG:Lorg/apache/log4j/Logger;

    const-string v7, "Encrypter.Encrypting"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/keyczar/Encrypter;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v6, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v6}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v6

    :cond_0
    iget-object v6, p0, Lorg/keyczar/Encrypter;->ENCRYPT_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v6}, Lorg/keyczar/StreamQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/EncryptingStream;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/EncryptingStream;

    :cond_1
    invoke-interface {v0}, Lorg/keyczar/interfaces/EncryptingStream;->getSigningStream()Lorg/keyczar/interfaces/SigningStream;

    move-result-object v5

    invoke-interface {v5}, Lorg/keyczar/interfaces/SigningStream;->initSign()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, p2}, Lorg/keyczar/KeyczarKey;->copyHeader(Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, p2}, Lorg/keyczar/interfaces/EncryptingStream;->initEncrypt(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v6, v11, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {v0, v2, p2}, Lorg/keyczar/interfaces/EncryptingStream;->updateEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit16 v6, v6, 0x400

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {v5, v4}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3, p2}, Lorg/keyczar/interfaces/EncryptingStream;->doFinalEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-interface {v5}, Lorg/keyczar/interfaces/SigningStream;->digestSize()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {v5, v4}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    invoke-interface {v5, p2}, Lorg/keyczar/interfaces/SigningStream;->sign(Ljava/nio/ByteBuffer;)V

    iget-object v6, p0, Lorg/keyczar/Encrypter;->ENCRYPT_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v6, v0}, Lorg/keyczar/StreamQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public encrypt([B)[B
    .locals 3
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    array-length v2, p1

    invoke-virtual {p0, v2}, Lorg/keyczar/Encrypter;->ciphertextSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/keyczar/Encrypter;->encrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1
    .param p1    # Lorg/keyczar/enums/KeyPurpose;

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
