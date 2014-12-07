.class public final Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;
.super Ljava/lang/Object;
.source "ElegantPlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# static fields
.field private static final DEFAULT_FACTORY:Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;


# instance fields
.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    invoke-direct {v0}, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;-><init>()V

    sput-object v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->DEFAULT_FACTORY:Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;-><init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 0
    .param p1    # Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    return-void
.end method

.method public static getSocketFactory()Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;
    .locals 1

    sget-object v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->DEFAULT_FACTORY:Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 14
    .param p1    # Ljava/net/Socket;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/net/InetAddress;
    .param p5    # I
    .param p6    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Target host may not be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    if-nez p6, :cond_1

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Parameters may not be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :cond_2
    if-nez p4, :cond_3

    if-lez p5, :cond_5

    :cond_3
    if-gez p5, :cond_4

    const/16 p5, 0x0

    :cond_4
    new-instance v3, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_5
    invoke-static/range {p6 .. p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v7

    iget-object v10, p0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v10, :cond_6

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v10, p0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move/from16 v0, p3

    invoke-direct {v4, v10, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v4, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v5

    const-string v10, "Established connection to [host=%s] in [%s ms]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v12, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_6
    new-instance v4, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v10, Lorg/apache/http/conn/ConnectTimeoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timed out"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
