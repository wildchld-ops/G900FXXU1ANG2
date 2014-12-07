.class Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "ClientLoginApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/challenge/ClientLoginApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientLoginRequest"
.end annotation


# instance fields
.field private final mPostParams:Ljava/util/Map;
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

.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p6    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p5, p6}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_ACCOUNT_TYPE:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$300()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_ACCOUNT_TYPE:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_EMAIL:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_PASSWD:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_SERVICE:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$700()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_SERVICE:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_SOURCE:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_SOURCE:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
