.class public Lorg/keyczar/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final GSON_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lorg/keyczar/util/Util;->RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lorg/keyczar/util/Util$1;

    invoke-direct {v0}, Lorg/keyczar/util/Util$1;-><init>()V

    sput-object v0, Lorg/keyczar/util/Util;->GSON_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static varargs cat([[B)[B
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    array-length v7, v1

    add-int/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v6, v4, [B

    const/4 v5, 0x0

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v1

    add-int/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v6
.end method

.method public static decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static fromInt(I)[B
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/keyczar/util/Util;->writeInt(I[BI)V

    return-object v0
.end method

.method public static gson()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lorg/keyczar/util/Util;->GSON_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static varargs hash([[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v7, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/MessageDigest;

    if-nez v6, :cond_0

    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v7, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v7, v3}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_1
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    sget-object v7, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static lenPrefix([B)[B
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs prefixHash([[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v7, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/MessageDigest;

    if-nez v6, :cond_0

    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    array-length v7, v1

    invoke-static {v7}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v7, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v7, v3}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_1
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    sget-object v7, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static rand([B)V
    .locals 2

    sget-object v1, Lorg/keyczar/util/Util;->RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Lorg/keyczar/util/Util;->RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static rand(I)[B
    .locals 1

    new-array v0, p0, [B

    invoke-static {v0}, Lorg/keyczar/util/Util;->rand([B)V

    return-object v0
.end method

.method static readInt([BI)I
    .locals 3

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    add-int/lit8 p1, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static safeArrayEquals([B[B)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-ne p0, p1, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_5

    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v4, v1

    int-to-byte v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public static stripLeadingZeros([B)[B
    .locals 4

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    :goto_1
    return-object p0

    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v1

    new-array v0, v2, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_1
.end method

.method public static toInt([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/keyczar/util/Util;->readInt([BI)I

    move-result v0

    return v0
.end method

.method static writeInt(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method
