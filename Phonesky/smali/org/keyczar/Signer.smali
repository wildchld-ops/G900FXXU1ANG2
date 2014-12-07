.class public Lorg/keyczar/Signer;
.super Lorg/keyczar/Verifier;
.source "Signer.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;


# instance fields
.field private final SIGN_QUEUE:Lorg/keyczar/StreamQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamQueue",
            "<",
            "Lorg/keyczar/interfaces/SigningStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/keyczar/Signer;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/keyczar/Signer;->LOG:Lorg/apache/log4j/Logger;

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

    invoke-direct {p0, p1}, Lorg/keyczar/Verifier;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    new-instance v0, Lorg/keyczar/StreamQueue;

    invoke-direct {v0}, Lorg/keyczar/StreamQueue;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    return-void
.end method


# virtual methods
.method public attachedSign([B[B)[B
    .locals 8
    .param p1    # [B
    .param p2    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/keyczar/Signer;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v5, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v5}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v5}, Lorg/keyczar/StreamQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/keyczar/interfaces/SigningStream;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v4

    check-cast v4, Lorg/keyczar/interfaces/SigningStream;

    :cond_1
    invoke-interface {v4}, Lorg/keyczar/interfaces/SigningStream;->initSign()V

    invoke-static {v7}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v0

    array-length v5, p2

    if-lez v5, :cond_2

    invoke-static {p2}, Lorg/keyczar/util/Util;->lenPrefix([B)[B

    move-result-object v0

    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    sget-object v5, Lorg/keyczar/Signer;->FORMAT_BYTES:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lorg/keyczar/Signer;->digestSize()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-interface {v4, v1}, Lorg/keyczar/interfaces/SigningStream;->sign(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v5, 0x4

    new-array v5, v5, [[B

    sget-object v6, Lorg/keyczar/Signer;->FORMAT_BYTES:[B

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {v3}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1}, Lorg/keyczar/util/Util;->lenPrefix([B)[B

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lorg/keyczar/util/Util;->cat([[B)[B

    move-result-object v2

    iget-object v5, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v5, v4}, Lorg/keyczar/StreamQueue;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public digestSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/keyczar/Signer;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v1}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v1

    check-cast v1, Lorg/keyczar/interfaces/SigningStream;

    invoke-interface {v1}, Lorg/keyczar/interfaces/SigningStream;->digestSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    return v1
.end method

.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1
    .param p1    # Lorg/keyczar/enums/KeyPurpose;

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
