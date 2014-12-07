.class public Lcom/google/android/finsky/receivers/BillingTickleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingTickleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x0

    const-string v2, "asset_package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/receivers/BillingTickleReceiver;->setResultCode(I)V

    const-string v2, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "notification_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/BillingTickleReceiver;->setResultCode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Intent does not contain a supported category; package: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/BillingTickleReceiver;->setResultCode(I)V

    goto :goto_0
.end method
