.class Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;
.super Ljava/lang/Object;
.source "RsaPrivateKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/DecryptingStream;
.implements Lorg/keyczar/interfaces/EncryptingStream;
.implements Lorg/keyczar/interfaces/SigningStream;
.implements Lorg/keyczar/interfaces/VerifyingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/RsaPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RsaPrivateStream"
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private encryptingStream:Lorg/keyczar/interfaces/EncryptingStream;

.field private signature:Ljava/security/Signature;

.field final synthetic this$0:Lorg/keyczar/RsaPrivateKey;

.field private verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;


# direct methods
.method public constructor <init>(Lorg/keyczar/RsaPrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iput-object p1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->this$0:Lorg/keyczar/RsaPrivateKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->signature:Ljava/security/Signature;

    # getter for: Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;
    invoke-static {p1}, Lorg/keyczar/RsaPrivateKey;->access$000(Lorg/keyczar/RsaPrivateKey;)Lorg/keyczar/RsaPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/keyczar/RsaPublicKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v1

    check-cast v1, Lorg/keyczar/interfaces/VerifyingStream;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;

    # getter for: Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;
    invoke-static {p1}, Lorg/keyczar/RsaPrivateKey;->access$000(Lorg/keyczar/RsaPrivateKey;)Lorg/keyczar/RsaPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/keyczar/RsaPublicKey;->getPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/keyczar/enums/RsaPadding;->getCryptAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->cipher:Ljavax/crypto/Cipher;

    # getter for: Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;
    invoke-static {p1}, Lorg/keyczar/RsaPrivateKey;->access$000(Lorg/keyczar/RsaPrivateKey;)Lorg/keyczar/RsaPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/keyczar/RsaPublicKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v1

    check-cast v1, Lorg/keyczar/interfaces/EncryptingStream;

    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->encryptingStream:Lorg/keyczar/interfaces/EncryptingStream;
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
.method public digestSize()I
    .locals 1

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->this$0:Lorg/keyczar/RsaPrivateKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPrivateKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-interface {v0}, Lorg/keyczar/interfaces/KeyType;->getOutputSize()I

    move-result v0

    return v0
.end method

.method public doFinalEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->encryptingStream:Lorg/keyczar/interfaces/EncryptingStream;

    invoke-interface {v0, p1, p2}, Lorg/keyczar/interfaces/EncryptingStream;->doFinalEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public getSigningStream()Lorg/keyczar/interfaces/SigningStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->encryptingStream:Lorg/keyczar/interfaces/EncryptingStream;

    invoke-interface {v0}, Lorg/keyczar/interfaces/EncryptingStream;->getSigningStream()Lorg/keyczar/interfaces/SigningStream;

    move-result-object v0

    return-object v0
.end method

.method public initEncrypt(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->encryptingStream:Lorg/keyczar/interfaces/EncryptingStream;

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/EncryptingStream;->initEncrypt(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public initSign()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->this$0:Lorg/keyczar/RsaPrivateKey;

    # getter for: Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v2}, Lorg/keyczar/RsaPrivateKey;->access$100(Lorg/keyczar/RsaPrivateKey;)Ljava/security/interfaces/RSAPrivateCrtKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initVerify()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;

    invoke-interface {v0}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    return-void
.end method

.method public maxOutputSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->this$0:Lorg/keyczar/RsaPrivateKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPrivateKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->this$0:Lorg/keyczar/RsaPrivateKey;

    iget v1, v1, Lorg/keyczar/RsaPrivateKey;->size:I

    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/KeyType;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public sign(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->signature:Ljava/security/Signature;

    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->encryptingStream:Lorg/keyczar/interfaces/EncryptingStream;

    invoke-interface {v0, p1, p2}, Lorg/keyczar/interfaces/EncryptingStream;->updateEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public updateSign(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->signature:Ljava/security/Signature;

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

.method public updateVerify(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public verify(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
