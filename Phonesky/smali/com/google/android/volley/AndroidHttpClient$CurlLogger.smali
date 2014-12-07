.class Lcom/google/android/volley/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/volley/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/volley/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/android/volley/AndroidHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/volley/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/volley/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/volley/AndroidHttpClient;Lcom/google/android/volley/AndroidHttpClient$1;)V
    .locals 0
    .param p1    # Lcom/google/android/volley/AndroidHttpClient;
    .param p2    # Lcom/google/android/volley/AndroidHttpClient$1;

    invoke-direct {p0, p1}, Lcom/google/android/volley/AndroidHttpClient$CurlLogger;-><init>(Lcom/google/android/volley/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1    # Lorg/apache/http/HttpRequest;
    .param p2    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/volley/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/volley/AndroidHttpClient;

    # getter for: Lcom/google/android/volley/AndroidHttpClient;->curlConfiguration:Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v1}, Lcom/google/android/volley/AndroidHttpClient;->access$300(Lcom/google/android/volley/AndroidHttpClient;)Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    # invokes: Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x1

    # invokes: Lcom/google/android/volley/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/google/android/volley/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
