.class Lcom/google/android/finsky/api/DfeApiImpl$1;
.super Lcom/google/android/finsky/api/ProtoDfeRequest;
.source "DfeApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/api/DfeApiImpl;->getDetails(Ljava/util/Collection;Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/ProtoDfeRequest",
        "<",
        "Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/api/DfeApiImpl;

.field final synthetic val$sortedDocids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/DfeApiImpl;Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/List;)V
    .locals 7
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/protobuf/nano/MessageNano;
    .param p4    # Lcom/google/android/finsky/api/DfeApiContext;
    .param p7    # Lcom/android/volley/Response$ErrorListener;

    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiImpl$1;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    iput-object p8, p0, Lcom/google/android/finsky/api/DfeApiImpl$1;->val$sortedDocids:Ljava/util/List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private computeDocumentIdHash()Ljava/lang/String;
    .locals 8

    const-wide/16 v1, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiImpl$1;->val$sortedDocids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v4, 0x1f

    mul-long/2addr v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long v1, v4, v6

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/docidhash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl$1;->computeDocumentIdHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
