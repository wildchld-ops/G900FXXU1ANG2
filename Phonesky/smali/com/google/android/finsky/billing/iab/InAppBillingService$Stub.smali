.class Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;
.super Lcom/android/vending/billing/IInAppBillingService$Stub;
.source "InAppBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    invoke-direct {p0}, Lcom/android/vending/billing/IInAppBillingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    const-string v0, "consumePurchase"

    const-string v2, "consumePurchase"

    const-string v3, "apiVersion: %d packageName: %s purchaseToken: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Input Error: Non empty/null argument expected for packageName."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Input Error: Non empty/null argument expected for purchaseToken."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_2

    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_3

    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p2, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$700(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    const-string v2, "consumePurchase"

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    const/4 v3, 0x0

    const-string v6, "getBuyIntent"

    const-string v0, "apiVersion: %d packageName: %s type: %s developerPayload: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {v6, v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input Error: Non empty/null argument expected for packageName."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-object v8

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Input Error: Non empty/null argument expected for type."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Input Error: Non empty/null argument expected for sku."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v9

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v9, v0, :cond_3

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v9}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v9

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v9, v0, :cond_4

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v9}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v0, p1, p4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v9

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v9, v0, :cond_5

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v9}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->isDocumentInLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p4, p3, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$400(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_ALREADY_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->makePurchaseIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$500(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v0, "BUY_INTENT"

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "RESPONSE_CODE"

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v6, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    const/4 v6, 0x0

    const-string v0, "getPurchases"

    const-string v3, "apiVersion: %d packageName: %s type: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Input Error: Non empty/null argument expected for packageName."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Input Error: Non empty/null argument expected for type."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v3, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v2, v3, :cond_2

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v3, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v2, v3, :cond_3

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v3, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v2, v3, :cond_4

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->populatePurchasesForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, p2, p3, p4, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$600(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "getSkuDetails"

    const-string v3, "apiVersion: %d packageName: %s type: %s skusBundle: %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Input Error: Non empty/null argument expected for packageName."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Input Error: Non empty/null argument expected for type."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    const-string v3, "Input Error: Non-null argument expected for skusBundle."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Input Error: skusBundle must contain an array associated with key %s."

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "ITEM_ID_LIST"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v3, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v2, v3, :cond_4

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v3, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v2, v3, :cond_5

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v3, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v2, v3, :cond_6

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, p2, p4, p3, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$300(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const-string v0, "isBillingSupported"

    const-string v2, "apiVersion: %d packageName: %s type: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Input Error: Non empty/null argument expected for packageName."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Input Error: Non empty/null argument expected for type."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_2

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_3

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0
.end method

.method public isPromoEligible(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "isPromoEligible"

    const-string v2, "apiVersion: %d packageName: %s type: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Input Error: Non empty/null argument expected for packageName."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Input Error: Non empty/null argument expected for type."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_3

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_4

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->performIabPromoCheck(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v2, p2, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$800(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    goto :goto_0
.end method
