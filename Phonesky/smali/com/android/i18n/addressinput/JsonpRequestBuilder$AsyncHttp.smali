.class Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;
.super Ljava/lang/Thread;
.source "JsonpRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/JsonpRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncHttp"
.end annotation


# static fields
.field private static final CLIENT:Lorg/apache/http/client/HttpClient;


# instance fields
.field private mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback",
            "<",
            "Lcom/android/i18n/addressinput/JsoMap;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;)V
    .locals 0
    .param p1    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback",
            "<",
            "Lcom/android/i18n/addressinput/JsoMap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p2, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;

    return-void
.end method

.method static synthetic access$000()Lorg/apache/http/client/HttpClient;
    .locals 1

    sget-object v0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    sget-object v3, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v5, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;

    invoke-static {v1}, Lcom/android/i18n/addressinput/JsoMap;->buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->mCallback:Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;

    invoke-interface {v2, v0}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
