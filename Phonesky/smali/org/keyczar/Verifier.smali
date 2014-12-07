.class public Lorg/keyczar/Verifier;
.super Lorg/keyczar/Keyczar;
.source "Verifier.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;


# instance fields
.field private final VERIFY_CACHE:Lorg/keyczar/StreamCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamCache",
            "<",
            "Lorg/keyczar/interfaces/VerifyingStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/keyczar/Verifier;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/keyczar/Verifier;->LOG:Lorg/apache/log4j/Logger;

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

    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    return-void
.end method

.method private checkFormatAndGetHash(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/BadVersionException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/keyczar/exceptions/BadVersionException;

    invoke-direct {v2, v1}, Lorg/keyczar/exceptions/BadVersionException;-><init>(B)V

    throw v2

    :cond_0
    const/4 v2, 0x4

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private getVerifyingKey([B)Lorg/keyczar/KeyczarKey;
    .locals 2
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/keyczar/Verifier;->getKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lorg/keyczar/exceptions/KeyNotFoundException;

    invoke-direct {v1, p1}, Lorg/keyczar/exceptions/KeyNotFoundException;-><init>([B)V

    throw v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1
    .param p1    # Lorg/keyczar/enums/KeyPurpose;

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
    .param p2    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/keyczar/Verifier;->verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 9
    .param p1    # Ljava/nio/ByteBuffer;
    .param p2    # Ljava/nio/ByteBuffer;
    .param p3    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v4, Lorg/keyczar/Verifier;->LOG:Lorg/apache/log4j/Logger;

    const-string v5, "Verifier.Verifying"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    new-instance v4, Lorg/keyczar/exceptions/ShortSignatureException;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/keyczar/exceptions/ShortSignatureException;-><init>(I)V

    throw v4

    :cond_0
    invoke-direct {p0, p3}, Lorg/keyczar/Verifier;->checkFormatAndGetHash(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/Verifier;->getVerifyingKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v4, Lorg/keyczar/exceptions/KeyNotFoundException;

    invoke-direct {v4, v0}, Lorg/keyczar/exceptions/KeyNotFoundException;-><init>([B)V

    throw v4

    :cond_1
    iget-object v4, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v4, v1}, Lorg/keyczar/StreamCache;->get(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/interfaces/Stream;

    move-result-object v3

    check-cast v3, Lorg/keyczar/interfaces/VerifyingStream;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v3

    check-cast v3, Lorg/keyczar/interfaces/VerifyingStream;

    :cond_2
    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    if-eqz p2, :cond_3

    invoke-interface {v3, p2}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    :cond_3
    invoke-interface {v3, p1}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    sget-object v4, Lorg/keyczar/Verifier;->FORMAT_BYTES:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3, p3}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v2

    iget-object v4, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v4, v1, v3}, Lorg/keyczar/StreamCache;->put(Lorg/keyczar/KeyczarKey;Lorg/keyczar/interfaces/Stream;)V

    return v2
.end method

.method public verify([B[B)Z
    .locals 2
    .param p1    # [B
    .param p2    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/Verifier;->verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
