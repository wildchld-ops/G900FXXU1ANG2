.class public Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;
    }
.end annotation


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mListenersAdded:Z

.field private final mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private mTrackPackageStatus:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
    .param p4    # Lcom/google/android/finsky/receivers/Installer;
    .param p5    # Lcom/google/android/finsky/appstate/AppStates;
    .param p6    # Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)Lcom/google/android/finsky/receivers/Installer;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Z
    .param p6    # Z

    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAndUninstallAsset(Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private attachListeners()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mTrackPackageStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    :cond_0
    return-void
.end method

.method private confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v4}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "refund_confirm"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v4, 0x7f09021b

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090118

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090119

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package_name"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "account_name"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "try_uninstall"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    const-string v4, "refund_confirm"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideNonDynamicViews()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mOptimalDeviceClassWarningView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mOptimalDeviceClassWarningView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V

    return-void
.end method

.method private listenerRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    :cond_0
    return-void
.end method

.method private refreshByPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->syncDynamicSection()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    :cond_0
    return-void
.end method

.method private refundAndUninstallAsset(Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Z
    .param p6    # Z

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->uninstallAsset(Ljava/lang/String;ZZZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p3, v2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private refundApp(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const-string v3, "package_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "account_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "try_uninstall"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;

    invoke-direct {v3, p0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Z)V

    invoke-static {v1, v0, v3}, Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V

    return-void
.end method

.method private uninstallAsset(Ljava/lang/String;ZZZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z
    .param p5    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-static {p1, v0, p3, p4, p5}, Lcom/google/android/finsky/utils/AppSupport;->showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;ZZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    goto :goto_0
.end method

.method private updateContainerLayouts()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->updateLayoutVisibility(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateLayoutVisibility(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;

    const/16 v1, 0x8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Z
    .param p3    # [Landroid/view/View;

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->attachListeners()V

    return-void
.end method

.method protected handleRefundFailure()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/finsky/utils/AppSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Lcom/google/android/finsky/fragments/PageFragment;
    .param p5    # Z
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-super/range {p0 .. p8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-boolean p5, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mTrackPackageStatus:Z

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->attachListeners()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mListenersAdded:Z

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    return-void
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .param p3    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->listenerRefresh()V

    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refreshByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .param p1    # [Ljava/lang/String;
    .param p2    # Z

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refreshByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "Unexpected requestCode %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    const-string v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundApp(Landroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setupActionButtons(Z)V
    .locals 26
    .param p1    # Z

    const v3, 0x7f0800af

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/play/layout/PlayActionButton;

    const v3, 0x7f0800b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/google/android/play/layout/PlayActionButton;

    const v3, 0x7f0800b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/google/android/play/layout/PlayActionButton;

    const v3, 0x7f0800b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/google/android/play/layout/PlayActionButton;

    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mHideDynamicFeatures:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget-object v13, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    new-instance v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v11, v13, v3, v5}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    const/16 v20, 0x0

    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v12

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-eqz v3, :cond_7

    const v3, 0x7f090215

    :goto_1
    new-instance v6, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v11, v12}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/activities/AppActionAnalyzer;Z)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v3, v6}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v13, v3, v5, v6}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v11, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->hasUpdateAvailable(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v11, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->hasConversionUpdateAvailable(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v24

    const v25, 0x7f090159

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContinueUrl:Ljava/lang/String;

    const/16 v9, 0xd9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v3

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    add-int/lit8 v20, v20, 0x1

    :cond_4
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    const/4 v15, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    const/16 v19, -0x1

    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    if-eqz v3, :cond_b

    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    if-eqz v3, :cond_a

    const v19, 0x7f09017d

    new-instance v15, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V

    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/play/layout/PlayActionButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1, v15}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :cond_5
    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v3, v5, v6}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v3, v5, v6}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v21

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    if-eqz v21, :cond_d

    const/16 v17, 0x1

    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->getBuyButtonLoggingElementType(ZI)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->getBuyButtonString(ZI)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContinueUrl:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v3

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1, v3}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->updateContainerLayouts()V

    goto/16 :goto_0

    :cond_7
    const v3, 0x7f090150

    goto/16 :goto_1

    :cond_8
    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    if-nez v3, :cond_9

    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const v5, 0x7f090151

    new-instance v6, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_9
    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const v5, 0x7f090215

    new-instance v6, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v11}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_a
    const v19, 0x7f09017c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v15

    goto/16 :goto_3

    :cond_b
    iget-boolean v3, v11, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v3, :cond_c

    new-instance v15, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V

    const v19, 0x7f09017f

    goto/16 :goto_3

    :cond_c
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    goto/16 :goto_3

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method protected showDynamicStatus(I)V
    .locals 2
    .param p1    # I

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showDynamicStatus(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->hideNonDynamicViews()V

    return-void
.end method

.method protected syncDynamicSection()V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    const-string v8, "Unexpected doc backend %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v8

    iget-object v4, v8, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v9, 0x7f0800f9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v8, v4}, Lcom/google/android/finsky/receivers/Installer;->getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v6

    sget-object v8, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    iget-object v9, v6, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v9}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v8, 0x7f0800cd

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0800cc

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f080073

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v2, v3, v5}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    const v8, 0x7f0800cb

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v8, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;

    invoke-direct {v8, p0, v4, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f08006c

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->hideNonDynamicViews()V

    goto :goto_0

    :pswitch_0
    const v8, 0x7f09020f

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->showDynamicStatus(I)V

    goto :goto_0

    :pswitch_1
    const v8, 0x7f090211

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->showDynamicStatus(I)V

    goto :goto_0

    :pswitch_2
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
