.class public Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;
.super Lcom/google/android/volley/GoogleHttpClientStack;
.source "GoogleProxyHttpClientStack.java"

# interfaces
.implements Lcom/google/android/finsky/remoting/SupportsProxy;


# instance fields
.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public clearProxy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyPort:I

    return-void
.end method

.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 4
    .param p1    # Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v0, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyPort:I

    if-lez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyHost:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyPort:I

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    :cond_0
    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iput-object p1, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyHost:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/finsky/remoting/GoogleProxyHttpClientStack;->proxyPort:I

    return-void
.end method
