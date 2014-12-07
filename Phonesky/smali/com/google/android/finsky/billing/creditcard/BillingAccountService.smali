.class public Lcom/google/android/finsky/billing/creditcard/BillingAccountService;
.super Landroid/app/Service;
.source "BillingAccountService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/creditcard/BillingAccountService;
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # [I
    .param p3    # Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/creditcard/BillingAccountService;
    .param p1    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/api/DfeApi;
    .param p1    # I
    .param p2    # [I
    .param p3    # Ljava/util/concurrent/Semaphore;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/VolleyError;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/creditcard/BillingAccountService;
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->convertErrorCode(Lcom/android/volley/VolleyError;)I

    move-result v0

    return v0
.end method

.method private checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 10
    .param p1    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, -0x4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v5, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;

    invoke-direct {v5, p0, v2, p1, v4}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/util/concurrent/Semaphore;)V

    new-instance v6, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;

    invoke-direct {v6, p0, v2, v4}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v0, v5, v6}, Lcom/google/android/finsky/api/DfeApi;->checkPromoOffers(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    const-wide/16 v5, 0x2d

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "result_code"

    const/4 v6, -0x4

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v5, "result_code"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logOfferResultCode(I)V

    const-string v5, "CheckPromoOffers result: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception v1

    const-string v5, "result_code"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # [I
    .param p3    # Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/finsky/api/DfeApi;->checkInstrument(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private convertErrorCode(Lcom/android/volley/VolleyError;)I
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_2

    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_3

    const/4 v0, -0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logOfferResultCode(I)V
    .locals 0
    .param p0    # I

    return-void
.end method

.method private static returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/DfeApi;
    .param p1    # I
    .param p2    # [I
    .param p3    # Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    aput p1, p2, v0

    invoke-virtual {p3}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;)V

    return-object v0
.end method
