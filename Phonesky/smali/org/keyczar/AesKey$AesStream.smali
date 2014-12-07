.class Lorg/keyczar/AesKey$AesStream;
.super Ljava/lang/Object;
.source "AesKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/DecryptingStream;
.implements Lorg/keyczar/interfaces/EncryptingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/AesKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AesStream"
.end annotation


# instance fields
.field private final decryptingCipher:Ljavax/crypto/Cipher;

.field private final encryptingCipher:Ljavax/crypto/Cipher;

.field ivRead:Z

.field private final signStream:Lorg/keyczar/interfaces/SigningStream;

.field final synthetic this$0:Lorg/keyczar/AesKey;


# direct methods
.method public constructor <init>(Lorg/keyczar/AesKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iput-object p1, p0, Lorg/keyczar/AesKey$AesStream;->this$0:Lorg/keyczar/AesKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/keyczar/AesKey$AesStream;->ivRead:Z

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :try_start_0
    # getter for: Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;
    invoke-static {p1}, Lorg/keyczar/AesKey;->access$000(Lorg/keyczar/AesKey;)Lorg/keyczar/enums/CipherMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/enums/CipherMode;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lorg/keyczar/AesKey$AesStream;->encryptingCipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/keyczar/AesKey$AesStream;->encryptingCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    # getter for: Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;
    invoke-static {p1}, Lorg/keyczar/AesKey;->access$100(Lorg/keyczar/AesKey;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    # getter for: Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;
    invoke-static {p1}, Lorg/keyczar/AesKey;->access$000(Lorg/keyczar/AesKey;)Lorg/keyczar/enums/CipherMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/enums/CipherMode;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lorg/keyczar/AesKey$AesStream;->decryptingCipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/keyczar/AesKey$AesStream;->decryptingCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    # getter for: Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;
    invoke-static {p1}, Lorg/keyczar/AesKey;->access$100(Lorg/keyczar/AesKey;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    # getter for: Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;
    invoke-static {p1}, Lorg/keyczar/AesKey;->access$200(Lorg/keyczar/AesKey;)Lorg/keyczar/HmacKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/HmacKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v2

    check-cast v2, Lorg/keyczar/interfaces/SigningStream;

    iput-object v2, p0, Lorg/keyczar/AesKey$AesStream;->signStream:Lorg/keyczar/interfaces/SigningStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public doFinalEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
    .param p2    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/AesKey$AesStream;->encryptingCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSigningStream()Lorg/keyczar/interfaces/SigningStream;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/AesKey$AesStream;->signStream:Lorg/keyczar/interfaces/SigningStream;

    return-object v0
.end method

.method public initEncrypt(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-static {v1}, Lorg/keyczar/util/Util;->rand([B)V

    :try_start_0
    iget-object v2, p0, Lorg/keyczar/AesKey$AesStream;->encryptingCipher:Ljavax/crypto/Cipher;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Lorg/keyczar/exceptions/ShortBufferException;

    invoke-direct {v2, v0}, Lorg/keyczar/exceptions/ShortBufferException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public maxOutputSize(I)I
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lorg/keyczar/AesKey$AesStream;->this$0:Lorg/keyczar/AesKey;

    # getter for: Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;
    invoke-static {v0}, Lorg/keyczar/AesKey;->access$000(Lorg/keyczar/AesKey;)Lorg/keyczar/enums/CipherMode;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lorg/keyczar/enums/CipherMode;->getOutputSize(II)I

    move-result v0

    return v0
.end method

.method public updateEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
    .param p2    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/AesKey$AesStream;->encryptingCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/ShortBufferException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/ShortBufferException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
