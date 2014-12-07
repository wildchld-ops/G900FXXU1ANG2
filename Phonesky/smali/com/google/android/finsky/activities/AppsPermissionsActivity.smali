.class public Lcom/google/android/finsky/activities/AppsPermissionsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppsPermissionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/play/RootUiElementNode;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mContinueButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/16 v0, 0x316

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method public static createIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/activities/AppsPermissionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AppsPermissionsActivity.accountName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AppsPermissionsActivity.docid"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "AppsPermissionsActivity.docidStr"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AppsPermissionsActivity.doc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static extractDoc(Landroid/content/Intent;)Lcom/google/android/finsky/api/model/Document;
    .locals 1

    const-string v0, "AppsPermissionsActivity.doc"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public static extractTitle(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "AppsPermissionsActivity.appTitle"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractVersionCode(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "AppsPermissionsActivity.appVersion"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDownloadSizeWarningArguments(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "AppsPermissionsActivity.appDownloadSizeWarningArguments"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadWarningArguments()Landroid/os/Bundle;
    .locals 11

    const/4 v8, 0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobile()J

    move-result-wide v2

    iget-object v9, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/installer/InstallPolicies;->hasMobileNetwork()Z

    move-result v9

    if-eqz v9, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_1

    invoke-static {v0}, Lcom/google/android/finsky/local/AssetUtils;->totalDeliverySize(Lcom/google/android/finsky/protos/DocDetails$AppDetails;)J

    move-result-wide v9

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1

    iget-object v9, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v9

    iget-wide v9, v9, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    cmp-long v9, v9, v2

    if-gez v9, :cond_0

    move v7, v8

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v6

    invoke-static {v8, v7, v6}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->makeArguments(ZZZ)Landroid/os/Bundle;

    move-result-object v8

    :goto_1
    return-object v8

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private hideLoading()V
    .locals 2

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090212

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "AppsPermissionsActivity.errorDialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showLoading()V
    .locals 4

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private updateFromDoc()V
    .locals 15

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->hideLoading()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v13, 0x0

    const/16 v1, 0x317

    invoke-virtual {v0, v13, v14, v1, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v12, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    move-object v7, v12

    array-length v9, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v10, v7, v8

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->requestFocus()Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mustAcceptPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mContinueButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090114

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mContinueButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09017d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finish()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0x25b

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public flushImpression()V
    .locals 2

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mContinueButton:Lcom/google/android/play/layout/PlayActionButton;

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AppsPermissionsActivity.doc"

    iget-object v2, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "AppsPermissionsActivity.appVersion"

    iget-object v2, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v2

    iget v2, v2, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "AppsPermissionsActivity.appTitle"

    iget-object v2, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AppsPermissionsActivity.appDownloadSizeWarningArguments"

    iget-object v2, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/local/AssetUtils;->totalDeliverySize(Lcom/google/android/finsky/protos/DocDetails$AppDetails;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "AppsPermissionsActivity.appDownloadSizeWarningArguments"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getDownloadWarningArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v2, 0x318

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040088

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->setContentView(I)V

    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AppsPermissionsActivity.accountName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mAccountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AppsPermissionsActivity.docid"

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AppsPermissionsActivity.docidStr"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AppsPermissionsActivity.doc"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const v3, 0x7f080153

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    iput-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    const v3, 0x7f080077

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mContinueButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mContinueButton:Lcom/google/android/play/layout/PlayActionButton;

    iget v4, v0, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    const v5, 0x7f090114

    invoke-virtual {v3, v4, v5, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    :cond_0
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->showLoading()V

    new-instance v3, Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 6

    iget-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v4, :cond_0

    const v4, 0x7f090085

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->showError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v4}, Lcom/google/android/finsky/utils/DocUtils;->getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->showError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->updateFromDoc()V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AppsPermissionsActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public startNewImpression()V
    .locals 2

    const-string v0, "Not using impression id\'s."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
