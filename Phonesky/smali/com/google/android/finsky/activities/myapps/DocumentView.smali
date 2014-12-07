.class public Lcom/google/android/finsky/activities/myapps/DocumentView;
.super Landroid/widget/LinearLayout;
.source "DocumentView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;,
        Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    }
.end annotation


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mButtonContainer:Landroid/view/ViewGroup;

.field private mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDocId:Ljava/lang/String;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

.field private mHasSubscriptions:Z

.field private mInstallButton:Lcom/google/android/play/layout/PlayActionButton;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

.field private mIsSystemPackage:Z

.field private mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private mRefundButton:Lcom/google/android/play/layout/PlayActionButton;

.field private final mShowLoadingRunnable:Ljava/lang/Runnable;

.field private final mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

.field private final mUiHandler:Landroid/os/Handler;

.field private mUninstallButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mUpdateButton:Lcom/google/android/play/layout/PlayActionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/DocumentView$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$1;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/DocumentView$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$2;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mShowLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/DocumentView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/DocumentView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/myapps/DocumentView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bind(Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->resetViewState()V

    new-instance v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->showButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindHeader()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindAvailabilityRestrictions()V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindSubscriptions(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->hasDetailsDataLoaded()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindLoading(Z)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindAutoUpdate(Landroid/support/v4/app/Fragment;Z)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {p0, v2, p1, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private bindAutoUpdate(Landroid/support/v4/app/Fragment;Z)V
    .locals 6

    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AutoUpdateSection;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindAvailabilityRestrictions()V
    .locals 6

    const v1, 0x7f0800c2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/WarningMessageSection;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/WarningMessageSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    return-void
.end method

.method private bindButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    const v1, 0x7f09017c

    new-instance v2, Lcom/google/android/finsky/activities/myapps/DocumentView$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView$3;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUpdateButton:Lcom/google/android/play/layout/PlayActionButton;

    const v1, 0x7f090159

    new-instance v2, Lcom/google/android/finsky/activities/myapps/DocumentView$4;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$4;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallButton:Lcom/google/android/play/layout/PlayActionButton;

    const v1, 0x7f09014f

    new-instance v2, Lcom/google/android/finsky/activities/myapps/DocumentView$5;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$5;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRefundButton:Lcom/google/android/play/layout/PlayActionButton;

    const v1, 0x7f090215

    new-instance v2, Lcom/google/android/finsky/activities/myapps/DocumentView$6;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView$6;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUninstallButton:Lcom/google/android/play/layout/PlayActionButton;

    const v1, 0x7f090150

    new-instance v2, Lcom/google/android/finsky/activities/myapps/DocumentView$7;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$7;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindHeader()V
    .locals 5

    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800f1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v2, v3, v0}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    const v2, 0x7f0800a4

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x7f080106

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DocImageView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    const v2, 0x7f080105

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/myapps/DocumentView$8;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$8;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindLoading(Z)V
    .locals 5

    if-eqz p1, :cond_1

    const v1, 0x7f080109

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mShowLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mShowLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Z)V
    .locals 13

    const v1, 0x7f08010a

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    if-nez p3, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, v7, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    array-length v10, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v11, v8, v9

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private bindSubscriptions(Landroid/os/Bundle;)V
    .locals 8

    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SubscriptionsSection;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const v5, 0x7f04009e

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void
.end method

.method private hasDetailsDataLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetViewState()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRefundButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUninstallButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUpdateButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    return-void
.end method

.method private showButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    sget-object v5, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v3, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    iput-boolean v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRefundButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v5, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-nez v5, :cond_3

    iget v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    if-ltz v5, :cond_7

    iget v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUpdateButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v5, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    const v6, 0x7f09017d

    invoke-virtual {v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->setText(I)V

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v5, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    :cond_4
    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    const v6, 0x7f09017f

    invoke-virtual {v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->setText(I)V

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v5, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    :cond_5
    const/4 v1, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUninstallButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v5, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-boolean v5, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v5, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    const v6, 0x7f09017c

    invoke-virtual {v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->setText(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0
.end method


# virtual methods
.method public bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, p3}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_1
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0, p5}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    :cond_2
    new-instance v0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 5

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mShowLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLaunchButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUpdateButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    const v1, 0x7f080108

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRefundButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mButtonContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUninstallButton:Lcom/google/android/play/layout/PlayActionButton;

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
