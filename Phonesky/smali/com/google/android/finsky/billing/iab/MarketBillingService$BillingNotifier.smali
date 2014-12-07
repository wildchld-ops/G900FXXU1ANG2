.class public Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;
.super Ljava/lang/Object;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BillingNotifier"
.end annotation


# instance fields
.field private mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    return-void
.end method


# virtual methods
.method protected sendPurchaseStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v1, v1, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "inapp_signed_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "inapp_signature"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    move-result v0

    return v0
.end method

.method protected showStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;)V
    .locals 14
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse:Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;

    iget-object v9, v2, Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;->signedData:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse:Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;

    iget-object v13, v2, Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;->signature:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification:[Lcom/google/android/finsky/protos/VendingProtos$StatusBarNotificationProto;

    array-length v11, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v12, v8, v10

    iget-object v3, v12, Lcom/google/android/finsky/protos/VendingProtos$StatusBarNotificationProto;->tickerText:Ljava/lang/String;

    iget-object v4, v12, Lcom/google/android/finsky/protos/VendingProtos$StatusBarNotificationProto;->contentTitle:Ljava/lang/String;

    iget-object v5, v12, Lcom/google/android/finsky/protos/VendingProtos$StatusBarNotificationProto;->contentText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v2, v2, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v2, "inapp_signed_data"

    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "inapp_signature"

    invoke-virtual {v7, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    const v6, 0x108008a

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/finsky/utils/Notifier;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
