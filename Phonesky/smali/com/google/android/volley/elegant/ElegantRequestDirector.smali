.class public Lcom/google/android/volley/elegant/ElegantRequestDirector;
.super Lorg/apache/http/impl/client/DefaultRequestDirector;
.source "ElegantRequestDirector.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p6    # Lorg/apache/http/protocol/HttpProcessor;
    .param p7    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p8    # Lorg/apache/http/client/RedirectHandler;
    .param p9    # Lorg/apache/http/client/AuthenticationHandler;
    .param p10    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11    # Lorg/apache/http/client/UserTokenHandler;
    .param p12    # Lorg/apache/http/params/HttpParams;

    invoke-direct/range {p0 .. p12}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/volley/elegant/ElegantRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v1, p0, Lcom/google/android/volley/elegant/ElegantRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v1}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    return-void
.end method
