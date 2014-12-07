.class public Lcom/google/android/finsky/utils/PurchaseInitiator;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/finsky/utils/PurchaseInitiator;->processPurchaseStatusResponse(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V

    return-void
.end method

.method private static createFreePurchaseErrorListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;IZ)Lcom/android/volley/Response$ErrorListener;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/finsky/utils/PurchaseInitiator$2;-><init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;IZ)V

    return-object v0
.end method

.method private static createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;ZZ)Lcom/android/volley/Response$Listener;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;",
            "ZZ)",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Buy$BuyResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    move-object v7, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/utils/PurchaseInitiator$1;-><init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;Z)V

    return-object v0
.end method

.method public static initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Document does not contain AppDetails, cannot download: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v2

    iget v2, v2, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    iget-object v3, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v8, "single_install"

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v8}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;ZZ)V
    .locals 12

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move v4, p2

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPurchaseBackgroundEvent(ILjava/lang/String;ILjava/lang/String;I[BJJ)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {p0 .. p7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;ZZ)Lcom/android/volley/Response$Listener;

    move-result-object v6

    move/from16 v0, p7

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreePurchaseErrorListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;IZ)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private static processPurchaseStatusResponse(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    iget-object v1, p4, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v1

    iget-object v2, p4, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-interface {v1, p0, v2, p6}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    :cond_0
    iget v0, p4, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->status:I

    if-ne v0, v3, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p4, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v1, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setExternalReferrer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "No delivery data for %s, waiting for notification."

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
