.class public Lcom/google/android/finsky/api/DfeRequest;
.super Lcom/android/volley/Request;
.source "DfeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/google/android/finsky/protos/Response$ResponseWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PROTO_DEBUG:Z


# instance fields
.field private mAllowMultipleResponses:Z

.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private mAvoidBulkCancel:Z

.field private mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResponseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResponseDelivered:Z

.field private mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

.field private mServerLatencyMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/google/android/finsky/utils/DfeLog;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    const-string v0, "DfeProto"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/api/DfeRequest;->PROTO_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/api/DfeApiContext;
    .param p5    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mServerLatencyMs:J

    iput-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAvoidBulkCancel:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Empty DFE URL"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/DfeLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->setShouldCache(Z)V

    new-instance v0, Lcom/google/android/finsky/api/DfeRetryPolicy;

    invoke-direct {v0, p2}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(Lcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iput-object p2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    iput-object p4, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p3, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getSignatureResponse(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/android/volley/NetworkResponse;

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v1, "X-DFE-Signature-Response"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private handleServerCommands(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;
    .locals 6
    .param p1    # Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/Response$ResponseWrapper;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Response$ServerCommands;->hasLogErrorStacktrace:Z

    if-eqz v2, :cond_2

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/android/finsky/protos/Response$ServerCommands;->logErrorStacktrace:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Response$ServerCommands;->clearCache:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    :cond_3
    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Response$ServerCommands;->hasDisplayErrorMessage:Z

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/android/finsky/api/DfeServerError;

    iget-object v2, v0, Lcom/google/android/finsky/protos/Response$ServerCommands;->displayErrorMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/finsky/api/DfeServerError;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    goto :goto_0
.end method

.method private logProtoResponse(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    sget-object v6, Lcom/google/android/finsky/api/DfeApiConfig;->protoLogUrlRegexp:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-class v7, Lcom/google/protobuf/nano/MessageNanoPrinter;

    monitor-enter v7

    :try_start_0
    const-string v6, "DfeProto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    const-string v6, "DfeProto"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "| "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v7

    :goto_1
    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    const-string v6, "DfeProto"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Url does not match regexp: url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / regexp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApiContext;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 12
    .param p0    # Lcom/android/volley/NetworkResponse;

    const-wide/16 v10, 0x0

    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_0
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Soft-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    :cond_1
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Hard-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v8, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "Invalid TTL: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    goto :goto_1
.end method

.method private parseWrapperAndVerifyFromBytes(Lcom/android/volley/NetworkResponse;Ljava/lang/String;)Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .locals 3
    .param p1    # Lcom/android/volley/NetworkResponse;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;,
            Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
        }
    .end annotation

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v1}, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->parseFrom([B)Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-virtual {v1, v2, p2}, Lcom/google/android/finsky/api/DfeResponseVerifier;->verify([BLjava/lang/String;)V

    const-string v1, "signature-verification-succeeded"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/DfeRequest;->addMarker(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private parseWrapperAndVerifySignature(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .locals 7
    .param p1    # Lcom/android/volley/NetworkResponse;
    .param p2    # Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/DfeRequest;->getSignatureResponse(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapperAndVerifySignatureFromIs(Ljava/io/InputStream;Ljava/lang/String;)Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapperAndVerifyFromBytes(Lcom/android/volley/NetworkResponse;Ljava/lang/String;)Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p2, :cond_1

    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapperAndVerifySignature(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "Cannot parse response as ResponseWrapper proto."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "IOException while manually unzipping request."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DfeLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "signature-verification-failed"

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->addMarker(Ljava/lang/String;)V

    const-string v3, "Could not verify request: %s, exception %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private parseWrapperAndVerifySignatureFromIs(Ljava/io/InputStream;Ljava/lang/String;)Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .locals 5
    .param p1    # Ljava/io/InputStream;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
        }
    .end annotation

    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v1, v0}, Lcom/google/android/finsky/api/DfeRequest;->pipeAndCloseOut(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->parseFrom([B)Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    invoke-virtual {v4, v3, p2}, Lcom/google/android/finsky/api/DfeResponseVerifier;->verify([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v4
.end method

.method private static pipeAndCloseOut(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0    # Ljava/io/InputStream;
    .param p1    # Ljava/io/OutputStream;
    .param p2    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1    # Lcom/android/volley/VolleyError;

    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Not delivering error response for request=[%s], error=[%s] because response already delivered."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deliverResponse(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    const-class v3, Lcom/google/android/finsky/protos/Response$Payload;

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/NanoProtoHelper;->getParsedResponseFromWrapper(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v2, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    iput-boolean v5, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Null wrapper parsed for request=[%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/api/DfeRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_1
    const-string v2, "Not delivering second response for request=[%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "Null parsed response for request=[%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-direct {v2}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/api/DfeRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/DfeRequest;->deliverResponse(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)V

    return-void
.end method

.method public getAvoidBulkCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mAvoidBulkCancel:Z

    return v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->makeCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/DfeApiContext;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    if-eqz v5, :cond_1

    :try_start_0
    const-string v5, "X-DFE-Signature-Request"

    iget-object v6, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/DfeResponseVerifier;->getSignatureRequest()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeoutMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; retryAttempt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v5, "X-DFE-Request-Params"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception v0

    const-string v5, "Couldn\'t create signature request: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->cancel()V

    goto :goto_0
.end method

.method public getServerLatencyMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mServerLatencyMs:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 8

    const/16 v4, 0x26

    const/4 v7, -0x1

    const/16 v5, 0x3f

    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ipCountryOverride="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->mccMncOverride:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_6

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "mccmncOverride="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "skipCache=true"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "showStagingData=true"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->prexDisabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_9

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "p13n=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2

    :cond_5
    move v3, v5

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto/16 :goto_1

    :cond_7
    move v3, v5

    goto/16 :goto_2

    :cond_8
    move v3, v5

    goto :goto_3

    :cond_9
    move v4, v5

    goto :goto_4
.end method

.method public handleNotifications(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/DfeApiContext;->getNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/DfeApiContext;->getNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/finsky/api/DfeNotificationManager;->processNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 4
    .param p1    # Lcom/android/volley/VolleyError;

    instance-of v2, p1, Lcom/android/volley/ServerError;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapperAndVerifySignature(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/api/DfeRequest;->handleServerCommands(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;

    move-result-object v0

    iget-object p1, v0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    :cond_0
    return-object p1
.end method

.method public parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 11
    .param p1    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Content-Length"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Content-Length"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v1, v6, 0x400

    :cond_0
    const-string v6, "Parsed response for url=[%s] contentLength=[%d KB]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/DfeLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, p1, v9}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapperAndVerifySignature(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v6, Lcom/android/volley/ParseError;

    invoke-direct {v6, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v6}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    sget-boolean v6, Lcom/google/android/finsky/api/DfeRequest;->PROTO_DEBUG:Z

    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lcom/google/android/finsky/api/DfeRequest;->logProtoResponse(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)V

    :cond_4
    invoke-direct {p0, v5}, Lcom/google/android/finsky/api/DfeRequest;->handleServerCommands(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v6, v5, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    if-eqz v6, :cond_5

    iget-object v3, v5, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    iget-boolean v6, v3, Lcom/google/android/finsky/protos/Response$ServerMetadata;->hasLatencyMillis:Z

    if-eqz v6, :cond_5

    iget-wide v6, v3, Lcom/google/android/finsky/protos/Response$ServerMetadata;->latencyMillis:J

    iput-wide v6, p0, Lcom/google/android/finsky/api/DfeRequest;->mServerLatencyMs:J

    :cond_5
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/api/DfeRequest;->handleNotifications(Lcom/google/android/finsky/protos/Response$ResponseWrapper;)V

    iget-object v6, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    if-eqz v6, :cond_7

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0, v5, v0}, Lcom/google/android/finsky/api/DfeRequest;->stripForCache(Lcom/google/android/finsky/protos/Response$ResponseWrapper;Lcom/android/volley/Cache$Entry;)V

    :cond_6
    invoke-static {v5, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v4

    const-string v6, "DFE response %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/DfeLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_0

    :cond_7
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeRequest;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    goto :goto_1
.end method

.method public setAllowMultipleResponses(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    return-void
.end method

.method public setAvoidBulkCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mAvoidBulkCancel:Z

    return-void
.end method

.method public setRequireAuthenticatedResponse()V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/api/DfeResponseVerifier;

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApiContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/api/DfeResponseVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseVerifier:Lcom/google/android/finsky/api/DfeResponseVerifier;

    return-void
.end method

.method stripForCache(Lcom/google/android/finsky/protos/Response$ResponseWrapper;Lcom/android/volley/Cache$Entry;)V
    .locals 11
    .param p1    # Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .param p2    # Lcom/android/volley/Cache$Entry;

    const/4 v10, 0x1

    iget-object v9, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    array-length v9, v9

    if-ge v9, v10, :cond_0

    iget-object v9, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    if-nez v9, :cond_0

    iget-object v9, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v9, v9

    if-ge v9, v10, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v8, v0, v4

    new-instance v2, Lcom/android/volley/Cache$Entry;

    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    iget-object v9, v8, Lcom/google/android/finsky/protos/Response$PreFetch;->response:[B

    iput-object v9, v2, Lcom/android/volley/Cache$Entry;->data:[B

    iget-object v9, v8, Lcom/google/android/finsky/protos/Response$PreFetch;->etag:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v9, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-wide v9, v2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iget-wide v9, v8, Lcom/google/android/finsky/protos/Response$PreFetch;->ttl:J

    add-long/2addr v9, v6

    iput-wide v9, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v9, v8, Lcom/google/android/finsky/protos/Response$PreFetch;->softTtl:J

    add-long/2addr v9, v6

    iput-wide v9, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    sget-object v9, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    iget-object v10, v8, Lcom/google/android/finsky/protos/Response$PreFetch;->url:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->makeCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v2}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sget-object v9, Lcom/google/android/finsky/protos/Response$PreFetch;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$PreFetch;

    iput-object v9, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    const/4 v9, 0x0

    iput-object v9, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    sget-object v9, Lcom/google/android/finsky/protos/Notifications$Notification;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Notifications$Notification;

    iput-object v9, p1, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v9

    iput-object v9, p2, Lcom/android/volley/Cache$Entry;->data:[B

    goto :goto_0
.end method
