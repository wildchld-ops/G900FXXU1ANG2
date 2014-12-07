.class final Lcom/google/android/finsky/utils/PurchaseInitiator$2;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreePurchaseErrorListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;IZ)Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$offerType:I

.field final synthetic val$showErrors:Z


# direct methods
.method constructor <init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput p3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$offerType:I

    iput-boolean p4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$showErrors:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 11

    const-wide/16 v7, -0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$account:Landroid/accounts/Account;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x12d

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$offerType:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v9, v7

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPurchaseBackgroundEvent(ILjava/lang/String;ILjava/lang/String;I[BJJ)V

    iget-boolean v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$showErrors:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v4, 0x7f09014b

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v6

    move-object v4, v3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/finsky/utils/Notifier;->showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
