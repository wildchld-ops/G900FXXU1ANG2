.class public Lcom/google/android/finsky/remoting/RadioHttpClient;
.super Ljava/lang/Object;
.source "RadioHttpClient.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/android/volley/toolbox/HttpStack;",
        ":",
        "Lcom/google/android/finsky/remoting/SupportsProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/toolbox/HttpStack;"
    }
.end annotation


# instance fields
.field private final mHttpStack:Lcom/android/volley/toolbox/HttpStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mRadioConnFactory:Lcom/google/android/finsky/remoting/RadioConnectionFactory;

.field private mRadioConnection:Lcom/google/android/finsky/remoting/RadioConnection;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/google/android/finsky/remoting/RadioConnectionFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/android/finsky/remoting/RadioConnectionFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    iput-object p2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mRadioConnFactory:Lcom/google/android/finsky/remoting/RadioConnectionFactory;

    return-void
.end method

.method private ensureRouteToHost(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mRadioConnection:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v1, p1}, Lcom/google/android/finsky/remoting/RadioConnection;->ensureRouteToHost(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fetchEntity(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private setProxyForRequest(Lcom/android/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/google/android/finsky/config/G;->vendingDcbProxyHost:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/google/android/finsky/config/G;->vendingDcbProxyPort:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/remoting/RadioHttpClient;->ensureRouteToHost(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    check-cast v2, Lcom/google/android/finsky/remoting/SupportsProxy;

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/remoting/SupportsProxy;->setProxy(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    check-cast v2, Lcom/google/android/finsky/remoting/SupportsProxy;

    invoke-interface {v2}, Lcom/google/android/finsky/remoting/SupportsProxy;->clearProxy()V

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/remoting/RadioHttpClient;->ensureRouteToHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private throwExceptionIfError(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected HTTP status code from carrier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mRadioConnFactory:Lcom/google/android/finsky/remoting/RadioConnectionFactory;

    invoke-interface {v2}, Lcom/google/android/finsky/remoting/RadioConnectionFactory;->createNewConnection()Lcom/google/android/finsky/remoting/RadioConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mRadioConnection:Lcom/google/android/finsky/remoting/RadioConnection;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mRadioConnection:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v2}, Lcom/google/android/finsky/remoting/RadioConnection;->start()V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/remoting/RadioHttpClient;->setProxyForRequest(Lcom/android/volley/Request;)V

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    invoke-interface {v2, p1, p2}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/remoting/RadioHttpClient;->fetchEntity(Lorg/apache/http/HttpResponse;)V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/remoting/RadioHttpClient;->throwExceptionIfError(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mRadioConnection:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v2}, Lcom/google/android/finsky/remoting/RadioConnection;->stop()V
    :try_end_1
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "Unable to stop radio: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "Unable to start radio: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start radio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/google/android/finsky/remoting/RadioHttpClient;->mRadioConnection:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v3}, Lcom/google/android/finsky/remoting/RadioConnection;->stop()V
    :try_end_3
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v2

    :catch_2
    move-exception v0

    const-string v3, "Unable to stop radio: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
