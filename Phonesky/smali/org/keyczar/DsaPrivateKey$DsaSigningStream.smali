.class Lorg/keyczar/DsaPrivateKey$DsaSigningStream;
.super Ljava/lang/Object;
.source "DsaPrivateKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/SigningStream;
.implements Lorg/keyczar/interfaces/VerifyingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/DsaPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DsaSigningStream"
.end annotation


# instance fields
.field private signature:Ljava/security/Signature;

.field final synthetic this$0:Lorg/keyczar/DsaPrivateKey;

.field private verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;


# direct methods
.method public constructor <init>(Lorg/keyczar/DsaPrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iput-object p1, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->this$0:Lorg/keyczar/DsaPrivateKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "SHA1withDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->signature:Ljava/security/Signature;

    # getter for: Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;
    invoke-static {p1}, Lorg/keyczar/DsaPrivateKey;->access$000(Lorg/keyczar/DsaPrivateKey;)Lorg/keyczar/DsaPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/keyczar/DsaPublicKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v1

    check-cast v1, Lorg/keyczar/interfaces/VerifyingStream;

    iput-object v1, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;
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

    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->this$0:Lorg/keyczar/DsaPrivateKey;

    invoke-virtual {v0}, Lorg/keyczar/DsaPrivateKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-interface {v0}, Lorg/keyczar/interfaces/KeyType;->getOutputSize()I

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
    iget-object v1, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->this$0:Lorg/keyczar/DsaPrivateKey;

    # getter for: Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;
    invoke-static {v2}, Lorg/keyczar/DsaPrivateKey;->access$100(Lorg/keyczar/DsaPrivateKey;)Ljava/security/interfaces/DSAPrivateKey;

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

    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;

    invoke-interface {v0}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    return-void
.end method

.method public sign(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->signature:Ljava/security/Signature;

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

.method public updateSign(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->signature:Ljava/security/Signature;

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
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public verify(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;->verifyingStream:Lorg/keyczar/interfaces/VerifyingStream;

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
