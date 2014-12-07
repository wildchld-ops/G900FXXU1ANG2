.class public Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "ElegantThreadSafeConnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;,
        Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .locals 3

    new-instance v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;

    iget-object v2, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-direct {v0, v2, p1}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    const/4 v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->enableConnectionGC()V

    :cond_0
    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    instance-of v5, p1, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;

    if-eqz v5, :cond_0

    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;->startTime:J

    sub-long v0, v5, v7

    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v3, 0x1388

    :goto_0
    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_1
    const-wide/16 v3, 0x9c4

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 3

    iget-object v2, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v2, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    new-instance v1, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;-><init>(Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    return-object v1
.end method
