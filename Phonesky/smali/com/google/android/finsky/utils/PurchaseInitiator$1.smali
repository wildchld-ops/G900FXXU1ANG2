.class final Lcom/google/android/finsky/utils/PurchaseInitiator$1;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;ZZ)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Buy$BuyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$continueUrl:Ljava/lang/String;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$externalReferrer:Ljava/lang/String;

.field final synthetic val$initiateAppDownload:Z

.field final synthetic val$offerType:I

.field final synthetic val$showErrors:Z

.field final synthetic val$successListener:Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput p3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$offerType:I

    iput-object p4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$externalReferrer:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$continueUrl:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$initiateAppDownload:Z

    iput-object p7, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$successListener:Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;

    iput-boolean p8, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$showErrors:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Buy$BuyResponse;)V
    .locals 12

    const/16 v1, 0x12d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    iget-object v9, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$account:Landroid/accounts/Account;

    invoke-virtual {v6, v9}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget-object v6, p1, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    if-eqz v6, :cond_3

    iget-object v11, p1, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    iget v6, v11, Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;->status:I

    if-nez v6, :cond_2

    iget-object v6, p1, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$offerType:I

    iget-object v6, p1, Lcom/google/android/finsky/protos/Buy$BuyResponse;->serverLogsCookie:[B

    move-wide v9, v7

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPurchaseBackgroundEvent(ILjava/lang/String;ILjava/lang/String;I[BJJ)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$externalReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$continueUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    iget-boolean v6, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$initiateAppDownload:Z

    const-string v7, "free_purchase"

    # invokes: Lcom/google/android/finsky/utils/PurchaseInitiator;->processPurchaseStatusResponse(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V
    invoke-static/range {v1 .. v7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->access$000(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$successListener:Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$successListener:Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v4, v5}, Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;->onFreePurchaseSuccess(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Expected PurchaseStatusResponse."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$offerType:I

    iget v5, v11, Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;->status:I

    move-object v6, v4

    move-wide v9, v7

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPurchaseBackgroundEvent(ILjava/lang/String;ILjava/lang/String;I[BJJ)V

    iget-boolean v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$showErrors:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v4, 0x7f09014b

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;->localizedErrorMessage:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v6

    move-object v4, v3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/finsky/utils/Notifier;->showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "Expected PurchaseResponse."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Buy$BuyResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->onResponse(Lcom/google/android/finsky/protos/Buy$BuyResponse;)V

    return-void
.end method
