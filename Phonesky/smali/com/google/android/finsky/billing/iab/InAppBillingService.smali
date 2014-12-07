.class public Lcom/google/android/finsky/billing/iab/InAppBillingService;
.super Landroid/app/Service;
.source "InAppBillingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mBinder:Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/config/G;->iabV3VerboseLogEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mBinder:Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->isDocumentInLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->makePurchaseIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->populatePurchasesForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->performIabPromoCheck(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/billing/iab/InAppBillingService;Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->buildDetailsJson(Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildDetailsJson(Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p1, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v5, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    iget-object v2, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    const-string v5, "productId"

    invoke-static {v2}, Lcom/google/android/finsky/utils/DocUtils;->extractSkuForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getInAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "price"

    iget-object v6, v4, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "price_amount_micros"

    iget-wide v6, v4, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "price_currency_code"

    iget-object v6, v4, Lcom/google/android/finsky/protos/Common$Offer;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "title"

    iget-object v6, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "description"

    iget-object v6, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v3

    const-string v5, "Exception when creating json: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 4

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "Unsupported billing API version: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method private checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "No packageName given!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->isBillingEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Billing unavailable for this package and user."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method private checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "inapp"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subs"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown item type specified %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "subs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/config/G;->iabV3SubscriptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Subscriptions are not supported"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method private computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    new-instance v9, Ljava/util/concurrent/Semaphore;

    invoke-direct {v9, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v3, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-array v8, v2, [Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v1, v8, v10

    new-instance v4, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;

    invoke-direct {v4, p0, v6, v8, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/accounts/Account;[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;Ljava/util/concurrent/Semaphore;)V

    new-instance v5, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;

    invoke-direct {v5, p0, v8, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;Ljava/util/concurrent/Semaphore;)V

    move-object v1, p2

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->consumePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    const-wide/16 v1, 0x14

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v7

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_0
    aget-object v1, v8, v10

    goto :goto_0
.end method

.method private fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    const-string v2, "ITEM_ID_LIST"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    :cond_0
    const-string v2, "RESPONSE_CODE"

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v8, v2, :cond_3

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p3, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->buildDocidStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;

    invoke-direct {v4, p0, p4, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V

    new-instance v5, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;

    invoke-direct {v5, p0, p4, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    const-wide/16 v2, 0x14

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RESPONSE_CODE"

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v2, "RESPONSE_CODE"

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getInAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "inapp:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "inapp"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "subs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "subs"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getListAndContinuationToken(Ljava/util/List;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/google/android/finsky/config/G;->iabV3MaxPurchasesInResponse:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->tokenToPosition(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    add-int v0, v2, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-static {v0}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->positionToToken(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-interface {p0, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 p1, 0x0

    goto :goto_1
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "cannot find package name: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1

    invoke-static {p1, p0}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->getPreferredAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private isBillingEnabledForAccount(Landroid/accounts/Account;I)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/android/finsky/billing/InAppBillingSetting;->isEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBillingEnabledForPackage(Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->isBillingEnabledForAccount(Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method private isDocumentInLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-direct {p0, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->blockingLoad()V

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v3

    invoke-static {p2, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->buildDocidStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static varargs logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bundle does not contain a response code"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Response bundle: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V
    .locals 3

    const-string v0, "Response code: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private makePurchaseIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 11

    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, p4, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->buildDocidStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/google/android/finsky/billing/IabParameters;

    iget v3, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    move v1, p1

    move-object v2, p2

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/IabParameters;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    invoke-static {v7, p4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->buildDocid(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v10, v1, v7, v2, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILcom/google/android/finsky/billing/IabParameters;)V

    invoke-static {v6, v10}, Lcom/google/android/finsky/billing/lightpurchase/IabV3Activity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;)Landroid/content/Intent;

    move-result-object v8

    const/4 v1, 0x0

    const/high16 v2, 0x40000000

    invoke-static {p0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private performIabPromoCheck(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v9, Ljava/util/concurrent/Semaphore;

    invoke-direct {v9, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-array v8, v11, [Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v2, v8, v10

    const/16 v1, 0xb

    const-string v2, "subs"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xf

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->getSimIdentifier()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;

    invoke-direct {v4, p0, v8, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;Ljava/util/concurrent/Semaphore;)V

    new-instance v5, Lcom/google/android/finsky/billing/iab/InAppBillingService$6;

    invoke-direct {v5, p0, v8, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$6;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;Ljava/util/concurrent/Semaphore;)V

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->checkIabPromo(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    const-wide/16 v2, 0x14

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v3, v8, v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    aget-object v2, v8, v10

    :goto_0
    return-object v2

    :catch_0
    move-exception v7

    const-string v2, "Interrupted: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method private populatePurchasesForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "inapp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v7, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getListAndContinuationToken(Ljava/util/List;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p3, v0

    check-cast p3, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibraryInAppEntry;

    invoke-virtual {v4}, Lcom/google/android/finsky/library/LibraryInAppEntry;->getDocId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/finsky/utils/DocUtils;->extractSkuForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v4, Lcom/google/android/finsky/library/LibraryInAppEntry;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v4, Lcom/google/android/finsky/library/LibraryInAppEntry;->signature:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v13, "subs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v7, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getSubscriptionPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getListAndContinuationToken(Ljava/util/List;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p3, v0

    check-cast p3, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    invoke-virtual {v4}, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->getDocId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/finsky/utils/DocUtils;->extractSkuForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->signature:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz p3, :cond_2

    const-string v13, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static positionToToken(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONT-TOKEN-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static tokenToPosition(Ljava/lang/String;)I
    .locals 3

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "CONT-TOKEN-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "CONT-TOKEN-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 10

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string v6, "Null packageName encountered."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v6

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "Package name %s does not match UID %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mBinder:Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
