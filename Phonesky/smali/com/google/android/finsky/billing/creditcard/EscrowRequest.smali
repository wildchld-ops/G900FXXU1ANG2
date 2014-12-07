.class public Lcom/google/android/finsky/billing/creditcard/EscrowRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "EscrowRequest.java"


# instance fields
.field private final mCreditCardNumber:Ljava/lang/String;

.field private final mCvc:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->getAndCheckUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iput p1, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mUserId:I

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mCreditCardNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mCvc:Ljava/lang/String;

    return-void
.end method

.method private static getAndCheckUrl()Ljava/lang/String;
    .locals 4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/finsky/config/G;->checkoutEscrowUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?s7e=cardNumber%3Bcvv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "corp.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unsafe escrow URL."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
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

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "gid"

    iget v2, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardNumber"

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mCreditCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cvv"

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mCvc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/config/G;->enableSensitiveLogging:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Empty escrow handle for card number %s cvc %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mCreditCardNumber:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mCvc:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Null response for Escrow string with id %d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, p1}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
