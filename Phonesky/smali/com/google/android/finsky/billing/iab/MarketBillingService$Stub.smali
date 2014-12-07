.class Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;
.super Lcom/android/vending/billing/IMarketBillingService$Stub;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-direct {p0}, Lcom/android/vending/billing/IMarketBillingService$Stub;-><init>()V

    return-void
.end method

.method private argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    const-string v7, "BILLING_REQUEST"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "API_VERSION"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v1, p2

    array-length v5, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p3

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method private varargs argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 1

    # getter for: Lcom/google/android/finsky/billing/iab/MarketBillingService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method private getBillingRequest(Landroid/os/Bundle;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v3, "BILLING_REQUEST"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "Received bundle without billing request type"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Unknown billing request type: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getNextInAppRequestId()J
    .locals 4

    # getter for: Lcom/google/android/finsky/billing/iab/MarketBillingService;->sRandom:Ljava/util/Random;
    invoke-static {}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$300()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v1, v1, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

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

.method private handleBillingRequest(Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    const-string v2, "API_VERSION"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "DEVELOPER_PAYLOAD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "ITEM_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "ITEM_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "NONCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v2, "NOTIFY_IDS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v16

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$1;->$SwitchMap$com$google$android$finsky$billing$iab$MarketBillingService$BillingRequest:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    const-string v2, "enum %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v2, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ITEM_TYPE"

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    const-string v6, "inapp"

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "ITEM_ID"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "DEVELOPER_PAYLOAD"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "ITEM_TYPE"

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    if-nez v6, :cond_4

    const-string v6, "inapp"

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v16

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->requestPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    const-string v8, "REQUEST_ID"

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v15, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "PURCHASE_INTENT"

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v15, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "NONCE"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    const-string v9, "NOTIFY_IDS"

    aput-object v9, v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPurchaseInformation(ILjava/lang/String;J[Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v16

    goto/16 :goto_1

    :pswitch_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "NONCE"

    aput-object v9, v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->restoreTransactions(ILjava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v16

    goto/16 :goto_1

    :pswitch_4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "PACKAGE_NAME"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "NOTIFY_IDS"

    aput-object v9, v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v13}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->confirmNotifications(ILjava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v16

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
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

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method private isRequestAllowed(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;-><init>()V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->packageName:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->versionCode:I

    iput-boolean v3, v1, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Md5Util;->secureHashBytes([B)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hash:[B

    return-object v1
.end method

.method private setResponseCode(Landroid/os/Bundle;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private updateWithRequestId(Landroid/os/Bundle;J)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "REQUEST_ID"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method


# virtual methods
.method public checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 4

    const/4 v3, 0x0

    if-gtz p1, :cond_0

    const-string v0, "No billing API version given!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    const-string v0, "Unsupported (future) billing API version: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method public checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "No packageName given!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Billing unavailable for this package."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v2, "No package info for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method public checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown item type specified %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v3, :cond_1

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Item type %s not supported in billing api version %d"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const-string v0, "subs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/config/G;->subscriptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method public confirmNotifications(ILjava/lang/String;[Ljava/lang/String;)J
    .locals 8

    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v5, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;->signatureHash:Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    iput-object p3, v2, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;->notificationId:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;

    invoke-direct {v6, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    new-instance v7, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;

    invoke-direct {v7, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    invoke-virtual {v5, v2, v6, v7}, Lcom/google/android/vending/remoting/api/VendingApi;->ackNotifications(Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public getPurchaseInformation(ILjava/lang/String;J[Ljava/lang/String;)J
    .locals 8

    const/4 v6, 0x1

    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v5, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    iput p1, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->billingApiVersion:I

    iput-boolean v6, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasBillingApiVersion:Z

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureHash:Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    const-string v5, "SHA1withRSA"

    iput-object v5, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureAlgorithm:Ljava/lang/String;

    iput-boolean v6, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureAlgorithm:Z

    iput-wide p3, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->nonce:J

    iput-boolean v6, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasNonce:Z

    iput-object p5, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;->notificationId:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;

    invoke-direct {v6, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    new-instance v7, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;

    invoke-direct {v7, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    invoke-virtual {v5, v2, v6, v7}, Lcom/google/android/vending/remoting/api/VendingApi;->getInAppPurchaseInformation(Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public requestPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    move-object/from16 v0, p2

    # invokes: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v4, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->buildDocidStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lcom/google/android/finsky/billing/IabParameters;

    iget v6, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/google/android/finsky/billing/IabParameters;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    move-object/from16 v0, p4

    invoke-static {v10, v0}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->buildDocid(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v13, v4, v10, v5, v3}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILcom/google/android/finsky/billing/IabParameters;)V

    move-wide v0, v15

    invoke-static {v9, v13, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;J)Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    const/4 v5, 0x0

    const/high16 v6, 0x40000000

    invoke-static {v4, v5, v11, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0
.end method

.method public restoreTransactions(ILjava/lang/String;J)J
    .locals 8

    const/4 v6, 0x1

    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/MarketBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    invoke-static {v5, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$100(Lcom/google/android/finsky/billing/iab/MarketBillingService;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isBillingEnabledForAccount(Landroid/accounts/Account;I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, v5, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    sget-object v6, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v5, p2, v3, v4, v6}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    iput p1, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->billingApiVersion:I

    iput-boolean v6, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasBillingApiVersion:Z

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->makeSignatureHash(Landroid/content/pm/PackageInfo;)Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureHash:Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    const-string v5, "SHA1withRSA"

    iput-object v5, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureAlgorithm:Ljava/lang/String;

    iput-boolean v6, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureAlgorithm:Z

    iput-wide p3, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->nonce:J

    iput-boolean v6, v2, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasNonce:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;

    invoke-direct {v6, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$3;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    new-instance v7, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;

    invoke-direct {v7, p0, p2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;-><init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V

    invoke-virtual {v5, v2, v6, v7}, Lcom/google/android/vending/remoting/api/VendingApi;->restoreInAppTransactions(Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getBillingRequest(Landroid/os/Bundle;)Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "RESPONSE_CODE"

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->stopSelf()V

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->handleBillingRequest(Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingRequest;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method
