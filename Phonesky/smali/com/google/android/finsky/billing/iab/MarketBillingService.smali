.class public Lcom/google/android/finsky/billing/iab/MarketBillingService;
.super Landroid/app/Service;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/MarketBillingService$1;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;,
        Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

.field mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mUidProvider:Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mUidProvider:Lcom/google/android/finsky/billing/iab/MarketBillingService$UidProvider;

    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    new-instance v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/iab/MarketBillingService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/iab/MarketBillingService;
    .param p1    # Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->purchaseResultToResponseCode(Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Random;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sRandom:Ljava/util/Random;

    return-object v0
.end method

.method private getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->getPreferredAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private purchaseResultToResponseCode(Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1
    .param p1    # Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;

    iget v0, p1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;->resultCode:I

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.vending.billing.RESPONSE_CODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1, v4}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "Response %s cannot be delivered to %s. Intent does not resolve."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_0
    const-string v3, "Sending response %s for request %d to %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v2

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "request_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "response_code"

    invoke-virtual {p4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
