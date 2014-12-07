.class Lorg/keyczar/RsaPublicKey$RsaStream;
.super Ljava/lang/Object;
.source "RsaPublicKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/EncryptingStream;
.implements Lorg/keyczar/interfaces/VerifyingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/RsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RsaStream"
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private signature:Ljava/security/Signature;

.field final synthetic this$0:Lorg/keyczar/RsaPublicKey;


# direct methods
.method constructor <init>(Lorg/keyczar/RsaPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iput-object p1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    invoke-virtual {p1}, Lorg/keyczar/RsaPublicKey;->getPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/keyczar/enums/RsaPadding;->getCryptAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public doFinalEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1    # Ljava/nio/ByteBuffer;
    .param p2    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v4, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v2, v4, v5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, p1, v3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    if-ne v0, v2, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v4, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    :try_start_1
    new-instance v4, Lorg/keyczar/exceptions/KeyczarException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes from encryption "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "operation but got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getSigningStream()Lorg/keyczar/interfaces/SigningStream;
    .locals 1

    new-instance v0, Lorg/keyczar/RsaPublicKey$RsaStream$1;

    invoke-direct {v0, p0}, Lorg/keyczar/RsaPublicKey$RsaStream$1;-><init>(Lorg/keyczar/RsaPublicKey$RsaStream;)V

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

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    # getter for: Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v3}, Lorg/keyczar/RsaPublicKey;->access$000(Lorg/keyczar/RsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initVerify()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    # getter for: Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v2}, Lorg/keyczar/RsaPublicKey;->access$000(Lorg/keyczar/RsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public maxOutputSize(I)I
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    iget v1, v1, Lorg/keyczar/RsaPublicKey;->size:I

    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/KeyType;->getOutputSize(I)I

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
    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateVerify(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Ljava/nio/ByteBuffer;)Z
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->verify([BII)Z
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
