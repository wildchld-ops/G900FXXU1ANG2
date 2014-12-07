.class public Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "LightPurchaseFlowActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAppTitle:Ljava/lang/String;

.field private mAppVersionCode:I

.field private mAppsContinueUrl:Ljava/lang/String;

.field private mCalledByFirstPartyPackage:Z

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDocid:Lcom/google/android/finsky/protos/Common$Docid;

.field private mDocidStr:Ljava/lang/String;

.field private mExternalReferrer:Ljava/lang/String;

.field private mFailed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHeavyDialogShown:Z

.field private mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

.field private mOfferRequiresCheckout:Z

.field private mOfferType:I

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Lcom/google/android/finsky/protos/Common$Docid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->logConfirmFreeDownload()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->success()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Lcom/google/android/finsky/api/model/Document;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->handlePromptForFopResult(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->handleAppPermissionResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->handleOfferResolutionResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->handlePaymentResult(I)V

    return-void
.end method

.method private acquire(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v9

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-static {v1, v9, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/protos/Common$Docid;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v1, v1, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    if-ne v1, v13, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->showDownloadSizeWarning(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->logConfirmFreeDownload()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppVersionCode:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mExternalReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppsContinueUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppTitle:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "single_install"

    invoke-interface/range {v0 .. v8}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->success()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v1, v1, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    const v10, 0x7f09019b

    :goto_1
    invoke-virtual {p0, v10}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->showError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v10, 0x7f0901a1

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mExternalReferrer:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppVersionCode:I

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppsContinueUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LightPurchaseFlowActivity.serverLogsCookie"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v0, v12, p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;[BLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0, v11, v13}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->showDownloadSizeWarning(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    new-instance v6, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mExternalReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppsContinueUrl:Ljava/lang/String;

    move v7, v13

    move v8, v13

    invoke-static/range {v1 .. v8}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;ZZ)V

    goto/16 :goto_0
.end method

.method public static createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;[BLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LightPurchaseFlowActivity.account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LightPurchaseFlowActivity.doc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LightPurchaseFlowActivity.offerType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, "LightPurchaseFlowActivity.offerFilter"

    invoke-virtual {p3}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "LightPurchaseFlowActivity.externalReferrer"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LightPurchaseFlowActivity.appsContinueUrl"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LightPurchaseFlowActivity.serverLogsCookie"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object v0
.end method

.method private fail()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mFailed:Z

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->setResult(I)V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->logFinish(Z)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->finish()V

    return-void
.end method

.method private getBackgroundEvent(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferType:Z

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    iput-boolean v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerCheckoutFlowRequired:Z

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferCheckoutFlowRequired:Z

    :cond_1
    return-object v0
.end method

.method private handleAppPermissionResult(ILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const-string v2, "Permissions accepted: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->extractDoc(Landroid/content/Intent;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Offer not found: type=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, v1, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    invoke-static {p2}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->extractVersionCode(Landroid/content/Intent;)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppVersionCode:I

    invoke-static {p2}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->extractTitle(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppTitle:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getDownloadSizeWarningArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v3, v3, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->acquire(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v2, "Permissions declined: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    goto :goto_0
.end method

.method private handleOfferResolutionResult(ILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-static {p2}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->extractAvailableOffer(Landroid/content/Intent;)Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v0, v1, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    iget-object v2, v1, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->docidStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    iput v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    const-string v2, "Offer resolution: %s, offerType=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->acquire(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Offer resolution canceled: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    goto :goto_0
.end method

.method private handlePaymentResult(I)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Payment screen finished with result: %d"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iput-boolean v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHeavyDialogShown:Z

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->success()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    goto :goto_0
.end method

.method private handlePromptForFopResult(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "Prompt for FOP activity success: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startAcquisitionFlow()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Prompt for FOP activity canceled: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    goto :goto_0
.end method

.method private launchAppsPermissions()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private logConfirmFreeDownload()V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics(Ljava/lang/String;)Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmFreeDownload?doc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/analytics/Analytics;->logAdMobPageView(Ljava/lang/String;)V

    return-void
.end method

.method private logFinish(Z)V
    .locals 4

    const/16 v2, 0x259

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getBackgroundEvent(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput-boolean p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method private logStart()V
    .locals 4

    const/16 v2, 0x258

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getBackgroundEvent(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method private setupFromExternalPurchaseIntent(Landroid/content/Intent;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/google/android/finsky/utils/Utils;->isCalledByFirstPartyPackage(Landroid/app/Activity;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mCalledByFirstPartyPackage:Z

    sget-object v5, Lcom/google/android/finsky/config/G;->enableThirdPartyDirectPurchases:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mCalledByFirstPartyPackage:Z

    if-nez v5, :cond_0

    const-string v5, "Called from untrusted package."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v7

    :cond_0
    const-string v5, "backend"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "document_type"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "backend_docid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "full_docid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "Missing argument."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v5, "authAccount"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "authAccount"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    if-nez v5, :cond_4

    const-string v5, "Invalid account passed: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    :cond_4
    const-string v5, "backend"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "document_type"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "backend_docid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iput v1, v5, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iput v3, v5, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iput-object v2, v5, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    const-string v5, "full_docid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const-string v5, "offer_type"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    iget v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    const-string v5, "offer_filter"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    if-nez v5, :cond_6

    const-string v5, "Invalid offer types passed: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v5, v7

    goto :goto_1

    :cond_6
    move v7, v6

    goto/16 :goto_0
.end method

.method private setupFromInternalIntent(Landroid/content/Intent;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Blocked request from external package: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_0
    return v2

    :cond_1
    iput-boolean v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mCalledByFirstPartyPackage:Z

    const-string v2, "LightPurchaseFlowActivity.account"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    const-string v2, "LightPurchaseFlowActivity.docid"

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Common$Docid;

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    const-string v2, "LightPurchaseFlowActivity.doc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getFullDocid()Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    const-string v2, "LightPurchaseFlowActivity.offerType"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    const-string v2, "LightPurchaseFlowActivity.offerFilter"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "LightPurchaseFlowActivity.offerFilter"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    :cond_2
    iget v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "Offer type not available: %d"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_3
    iget-boolean v2, v1, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    :cond_4
    const-string v2, "LightPurchaseFlowActivity.externalReferrer"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mExternalReferrer:Ljava/lang/String;

    const-string v2, "LightPurchaseFlowActivity.appsContinueUrl"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppsContinueUrl:Ljava/lang/String;

    move v2, v4

    goto/16 :goto_0
.end method

.method private showDownloadSizeWarning(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->newInstance(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "LightPurchaseFlowActivity.appDownloadSizeWarningDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startAcquisitionFlow()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v1, v1, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->launchAppsPermissions()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->createIntent(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/DocUtils$OfferFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->acquire(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startFopRequiredFlow()V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHeavyDialogShown:Z

    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LightPurchaseFlowActivity.serverLogsCookie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    const v0, 0x7f0900ad

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setTitleId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x3e8

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v7

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->recordDialogImpression(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "LightPurchaseFlowActivity.fopRequiredDialog"

    invoke-virtual {v7, v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private success()V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mCalledByFirstPartyPackage:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "backend"

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v2, v2, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "document_type"

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v2, v2, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "backend_docid"

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offer_type"

    iget v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "involved_heavy_dialogs"

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHeavyDialogShown:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/PlayGamesInstallHelper;->addGameIntentExtras(Lcom/google/android/finsky/api/model/Document;Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->logFinish(Z)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$2;-><init>(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$3;-><init>(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;-><init>(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$5;-><init>(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.vending.billing.PURCHASE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->setupFromExternalPurchaseIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "LightPurchaseFlowActivity.docid"

    invoke-static {p1, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Common$Docid;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    const-string v1, "LightPurchaseFlowActivity.docidStr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    const-string v1, "LightPurchaseFlowActivity.doc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const-string v1, "LightPurchaseFlowActivity.offerType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    const-string v1, "LightPurchaseFlowActivity.offerRequiresCheckout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    const-string v1, "LightPurchaseFlowActivity.appTitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppTitle:Ljava/lang/String;

    const-string v1, "LightPurchaseFlowActivity.appVersionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppVersionCode:I

    const-string v1, "LightPurchaseFlowActivity.failed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mFailed:Z

    const-string v1, "LightPurchaseFlowActivity.purchasePerformed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHeavyDialogShown:Z

    :cond_1
    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->setupFromInternalIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    goto :goto_0
.end method

.method public onDownloadCancel()V
    .locals 4

    const-string v0, "Download size warning dismissed for app = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    return-void
.end method

.method public onDownloadOk(Z)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v0, v1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    const-string v1, "Will download %s using wifi only = %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->acquire(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 9

    packed-switch p1, :pswitch_data_0

    const-string v5, "Unknown dialog callback: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    goto :goto_0

    :pswitch_1
    const-string v5, "dialog_details_url"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->fail()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "LightPurchaseFlowActivity.serverLogsCookie"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->createIntent(Landroid/accounts/Account;[B)Landroid/content/Intent;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {p0, v3, v5}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onReady(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mFailed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->logStart()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->shouldPromptForFop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startFopRequiredFlow()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startAcquisitionFlow()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "LightPurchaseFlowActivity.docid"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "LightPurchaseFlowActivity.docidStr"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocidStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LightPurchaseFlowActivity.doc"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "LightPurchaseFlowActivity.offerType"

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LightPurchaseFlowActivity.offerRequiresCheckout"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mOfferRequiresCheckout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "LightPurchaseFlowActivity.purchasePerformed"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mHeavyDialogShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "LightPurchaseFlowActivity.appTitle"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LightPurchaseFlowActivity.appVersionCode"

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAppVersionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LightPurchaseFlowActivity.failed"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mFailed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetupWifi()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090212

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "LightPurchaseFlowActivity.errorDialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
