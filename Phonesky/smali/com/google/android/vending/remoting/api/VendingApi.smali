.class public Lcom/google/android/vending/remoting/api/VendingApi;
.super Ljava/lang/Object;
.source "VendingApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;
    }
.end annotation


# instance fields
.field private final mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/vending/remoting/api/VendingApiContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    return-void
.end method


# virtual methods
.method public ackNotifications(Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public checkForPendingNotifications(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public checkLicense(Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public flagAsset(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    iput-object p1, v2, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;->assetId:Ljava/lang/String;

    iput-boolean v1, v2, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId:Z

    iput p2, v2, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;->flagType:I

    iput-boolean v1, v2, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType:Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, v2, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;->flagMessage:Ljava/lang/String;

    iput-boolean v1, v2, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage:Z

    :cond_0
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public getApiContext()Lcom/google/android/vending/remoting/api/VendingApiContext;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    return-object v0
.end method

.method public getBillingCountries(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    new-instance v2, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    new-instance v4, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;

    invoke-direct {v4, p1}, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;-><init>(Lcom/android/volley/Response$Listener;)V

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public getInAppPurchaseInformation(Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public recordBillingEvent(Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public restoreApplications(Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public restoreInAppTransactions(Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public syncContent(Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    const-class v3, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v8

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-Public-Android-Id"

    invoke-virtual {v8, v0, v7}, Lcom/google/android/vending/remoting/api/VendingRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
