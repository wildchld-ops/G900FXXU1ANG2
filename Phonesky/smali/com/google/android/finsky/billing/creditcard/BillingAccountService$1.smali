.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;
.super Lcom/android/vending/billing/IBillingAccountService$Stub;
.source "BillingAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-direct {p0}, Lcom/android/vending/billing/IBillingAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffers(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-static {p1, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "Received invalid account name: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "result_code"

    const/4 v5, -0x5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    # invokes: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
    invoke-static {v4, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$100(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/accounts/Account;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    # invokes: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
    invoke-static {v4, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$100(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/accounts/Account;)Landroid/os/Bundle;
    :try_end_1
    .catch Lcom/android/volley/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "result_code"

    const/4 v5, -0x3

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public hasValidCreditCard(Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, -0x4

    const/4 v9, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    const/4 v6, 0x1

    new-array v3, v6, [I

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v6, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-static {p1, v6}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received invalid account name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, -0x5

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    # invokes: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v6, v1, v3, v4}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$000(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    const-wide/16 v6, 0x2d

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    const/4 v7, -0x4

    aput v7, v3, v6

    :cond_1
    const/4 v6, 0x0

    aget v5, v3, v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "Timed out while waiting for response."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
