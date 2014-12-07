.class Lorg/keyczar/HmacKey$HmacStream;
.super Ljava/lang/Object;
.source "HmacKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/SigningStream;
.implements Lorg/keyczar/interfaces/VerifyingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/HmacKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HmacStream"
.end annotation


# instance fields
.field private final hmac:Ljavax/crypto/Mac;

.field final synthetic this$0:Lorg/keyczar/HmacKey;


# direct methods
.method public constructor <init>(Lorg/keyczar/HmacKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iput-object p1, p0, Lorg/keyczar/HmacKey$HmacStream;->this$0:Lorg/keyczar/HmacKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "HMACSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;
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

    iget-object v0, p0, Lorg/keyczar/HmacKey$HmacStream;->this$0:Lorg/keyczar/HmacKey;

    invoke-virtual {v0}, Lorg/keyczar/HmacKey;->getType()Lorg/keyczar/interfaces/KeyType;

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
    iget-object v1, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    iget-object v2, p0, Lorg/keyczar/HmacKey$HmacStream;->this$0:Lorg/keyczar/HmacKey;

    # getter for: Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;
    invoke-static {v2}, Lorg/keyczar/HmacKey;->access$000(Lorg/keyczar/HmacKey;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/keyczar/HmacKey$HmacStream;->initSign()V

    return-void
.end method

.method public sign(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public updateSign(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public updateVerify(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/keyczar/HmacKey$HmacStream;->updateSign(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public verify(Ljava/nio/ByteBuffer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/keyczar/util/Util;->safeArrayEquals([B[B)Z

    move-result v1

    return v1
.end method
