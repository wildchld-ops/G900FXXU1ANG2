.class public Lcom/google/android/vending/remoting/api/VendingRequest;
.super Lcom/android/volley/Request;
.source "VendingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        "U:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

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

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TU;>;"
        }
    .end annotation
.end field

.field private final mRequest:Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResponseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TU;>;"
        }
    .end annotation
.end field

.field private final mUseSecureAuthToken:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Lcom/android/volley/Response$Listener",
            "<TU;>;",
            "Lcom/google/android/vending/remoting/api/VendingApiContext;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p7}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mAvoidBulkCancel:Z

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    iput-object p3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequest:Lcom/google/protobuf/nano/MessageNano;

    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mResponseClass:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p6, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    new-instance v0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;-><init>(Lcom/google/android/vending/remoting/api/VendingApiContext;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/vending/remoting/api/VendingRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    return-void
.end method

.method public static make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            "U:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Lcom/android/volley/Response$Listener",
            "<TU;>;",
            "Lcom/google/android/vending/remoting/api/VendingApiContext;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/google/android/vending/remoting/api/VendingRequest",
            "<TT;TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/vending/remoting/api/VendingRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/vending/remoting/api/VendingRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method


# virtual methods
.method public addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 2

    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingApiContext;->invalidateAuthToken(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected deliverResponse(Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;)V
    .locals 4

    iget-object v2, p1, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;->response:[Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    const-class v2, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    iget-object v3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mResponseClass:Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/NanoProtoHelper;->getParsedResponseFromWrapper(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v2, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingRequest;->deliverResponse(Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;)V

    return-void
.end method

.method public getAvoidBulkCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mAvoidBulkCancel:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
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

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-virtual {v2}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getPostParams()Ljava/util/Map;
    .locals 3
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

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "request"

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequest:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/api/VendingRequest;->serializeRequestProto(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected handlePendingNotifications(Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;Z)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;->pendingNotifications:Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;

    if-eqz v3, :cond_0

    iget-object v1, p1, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;->pendingNotifications:Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPendingNotificationsHandler()Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v1, p2}, Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;->handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/google/android/finsky/utils/NanoProtoHelper;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;->parseFrom([B)Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;

    move-result-object v1

    iget-object v4, v1, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;->response:[Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    array-length v4, v4

    if-eq v4, v6, :cond_2

    new-instance v4, Lcom/android/volley/ServerError;

    invoke-direct {v4}, Lcom/android/volley/ServerError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v2, v3

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    :try_start_3
    iget-object v4, v1, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;->response:[Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    iget v4, v4, Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;->result:I

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/volley/ServerError;

    invoke-direct {v4}, Lcom/android/volley/ServerError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    move-object v2, v3

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :try_start_5
    invoke-virtual {p0, v1, v4}, Lcom/google/android/vending/remoting/api/VendingRequest;->handlePendingNotifications(Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;Z)Z

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_3
    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse Vending ResponseProto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/android/volley/VolleyError;

    invoke-direct {v4}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_6
    throw v4

    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_3

    :catch_5
    move-exception v5

    goto :goto_6

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_4
.end method

.method serializeRequestProto(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;-><init>()V

    const-class v2, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    iget-object v3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/finsky/utils/NanoProtoHelper;->setRequestInWrapper(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/VendingProtos$RequestProto;-><init>()V

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getRequestProperties(Z)Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto;->requestProperties:Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto;->request:[Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setAvoidBulkCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mAvoidBulkCancel:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
