.class public Lcom/google/android/volley/GoogleHttpClientStack;
.super Lcom/android/volley/toolbox/HttpClientStack;
.source "GoogleHttpClientStack.java"


# instance fields
.field private final mGoogleHttpClient:Lcom/google/android/volley/GoogleHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Z

    new-instance v0, Lcom/google/android/volley/GoogleHttpClient;

    const-string v1, "unused/0"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/volley/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Lcom/google/android/volley/GoogleHttpClient;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/volley/GoogleHttpClient;Z)V
    .locals 2
    .param p1    # Lcom/google/android/volley/GoogleHttpClient;
    .param p2    # Z

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    iput-object p1, p0, Lcom/google/android/volley/GoogleHttpClientStack;->mGoogleHttpClient:Lcom/google/android/volley/GoogleHttpClient;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/volley/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
