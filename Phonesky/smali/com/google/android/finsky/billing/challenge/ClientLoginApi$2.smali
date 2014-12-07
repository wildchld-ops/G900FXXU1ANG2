.class Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;
.super Ljava/lang/Object;
.source "ClientLoginApi.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

.field final synthetic val$gaiaPasswd:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    iput-object p2, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    iput-object p3, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$gaiaPasswd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 8
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "ClientLogin error: network response empty"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$gaiaPasswd:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;->onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_BAD_AUTH:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_INFO_TWO_FACTOR:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->TWO_FACTOR:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    const-string v3, "ClientLogin error: two factor."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$gaiaPasswd:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;->onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->BAD_AUTHENTICATION:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    const-string v3, "ClientLogin error: bad auth."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "Unsupported encoding %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :try_start_2
    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_CAPTCHA_REQUIRED:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->CAPTCHA:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    const-string v3, "ClientLogin error: captcha."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v3, "ClientLogin error: unrecognized type %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
