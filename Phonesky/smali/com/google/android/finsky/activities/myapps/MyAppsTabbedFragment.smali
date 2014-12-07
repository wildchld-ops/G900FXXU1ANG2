.class public Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;
.implements Lcom/google/android/finsky/utils/AppSupport$RefundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;
    }
.end annotation


# static fields
.field private static sLastSelectedTabType:I


# instance fields
.field private mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

.field private mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

.field private mBreadcrumb:Ljava/lang/String;

.field private mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

.field mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mListContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

.field private final mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

.field private mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field private mUseActionBarTabs:Z

.field private mUseTwoColumnLayout:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchSelectedTab(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refundDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/DocumentView;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->dismissArchiveProgressDialog()V

    return-void
.end method

.method private archiveDocs(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    const/16 v1, 0x1fa

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f090337

    invoke-static {v1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "archive_progress_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    new-instance v4, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->archiveFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private cleanupActionModeIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->finishActiveMode()V

    return-void
.end method

.method private clearState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayTabContainer;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->removeListContainerViews()V

    iput-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->clearTabs()V

    return-void
.end method

.method private configureViewPager(ZZ)V
    .locals 5
    .param p1    # Z
    .param p2    # Z

    const/16 v4, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f08018d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f0801e2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayTabContainer;

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v1, v4}, Lcom/google/android/play/layout/PlayTabContainer;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayTabContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v1, v0}, Lcom/google/android/play/layout/PlayTabContainer;->setSelectedIndicatorColor(I)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayTabContainer;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v1, v4}, Lcom/google/android/play/layout/PlayTabContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method private dismissArchiveProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/DfeToc;Z)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .locals 2
    .param p0    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p1    # Z

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    const-string v1, "show_update_all_prompt"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setArgument(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private recordState()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    sget v4, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v1, v0

    :cond_3
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    sget v4, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private refundDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

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

    const/4 v4, 0x4

    invoke-virtual {v0, p0, v4, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    const-string v4, "refund_confirm"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeListContainerViews()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/finsky/activities/ViewPagerTab;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->onDestroy()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private setDocumentView()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080194

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/DocumentView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->init(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    :cond_0
    return-void
.end method

.method private showAccountSelectorIfNecessary(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/AccountSelectorView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private switchSelectedTab(I)V
    .locals 8
    .param p1    # I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v6, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->setSelectedTab(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    move v4, v5

    :goto_2
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/ViewPagerTab;

    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v7, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v3, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->showAccountSelectorIfNecessary(I)V

    return-void
.end method


# virtual methods
.method public adjustMenu(Ljava/util/List;Landroid/view/Menu;)V
    .locals 5
    .param p2    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->canRemoveFromLibrary(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :cond_1
    const v4, 0x7f080261

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public clearDocDetails()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public confirmArchiveDocs(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "archive_confirm"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    const v3, 0x7f090338

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f090212

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f090076

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const v1, 0x7f090339

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v1, "docid_list"

    invoke-virtual {v11, v1, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v11}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    const/16 v1, 0x13d

    const/16 v3, 0x10d

    const/16 v4, 0x10e

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "archive_confirm"

    invoke-virtual {v6, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisplayedDocId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getDocId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f0400a3

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method handleMenuItem(Ljava/util/List;Landroid/view/MenuItem;)Z
    .locals 1
    .param p2    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Landroid/view/MenuItem;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->confirmArchiveDocs(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080261
        :pswitch_0
    .end packed-switch
.end method

.method protected isDataReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0901d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseTwoColumnLayout:Z

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/utils/Notifier;->hideUpdatesAvailableMessage()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchToLoading()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->requestData()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindActionBar()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindViews()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->cleanupActionModeIfNecessary()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->recordState()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->clearState()V

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setDocumentView()V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refresh()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v0, p1}, Lcom/google/android/play/layout/PlayTabContainer;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1    # I
    .param p2    # F
    .param p3    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/layout/PlayTabContainer;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1    # I

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchSelectedTab(I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v1}, Lcom/google/android/play/layout/PlayTabContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f09036e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->onPageSelected(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v1, p1}, Lcom/google/android/play/layout/PlayTabContainer;->onPageSelected(I)V

    goto :goto_0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 9
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v5, "Unexpected requestCode %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v5, p1, p2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    const-string v5, "package_name"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v5, v2}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v5, "package_name"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p0}, Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V

    goto :goto_0

    :pswitch_4
    const-string v5, "docid_list"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getCurrentTab()Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getDisplayedDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->clearDocumentView()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->cleanupActionModeIfNecessary()V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->archiveDocs(Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/utils/AppSupport$RefundResult;
    .param p2    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "enum %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p2}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/AppSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refresh()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onRefundStart()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "archive_progress_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mArchiveProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->dismissArchiveProgressDialog()V

    return-void
.end method

.method public openDocDetails(Lcom/google/android/finsky/api/model/Document;)V
    .locals 16
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->setVisibility(I)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v1

    iget-object v15, v1, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    new-instance v13, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-direct {v13, v15, v5, v6}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    invoke-virtual {v13, v15, v14, v5, v6}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getAppDetailsAccount(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Selecting account %s for package %s details"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object v11, v1

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    return-void
.end method

.method public rebindViews()V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setDocumentView()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchToData()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindActionBar()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getView()Landroid/view/View;

    move-result-object v14

    const v2, 0x7f0800ba

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-nez v2, :cond_4

    const/16 v17, 0x1

    :goto_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->hasSubscriptions()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    new-instance v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "show_update_all_prompt"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/os/Bundle;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->configureViewPager(ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "MyAppsTabbedAdapter.CurrentTabType"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "MyAppsTabbedAdapter.CurrentTabType"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    :goto_2
    const/4 v2, 0x1

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    const/16 v16, 0x0

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getCount()I

    move-result v2

    if-ge v15, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2, v15}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    if-ne v2, v13, :cond_6

    move/from16 v16, v15

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080193

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CustomActionBar;->clearTabs()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->removeListContainerViews()V

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getCount()I

    move-result v2

    if-ge v15, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v4, v15}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    invoke-interface {v2, v4, v5}, Lcom/google/android/finsky/layout/CustomActionBar;->addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v15}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/activities/ViewPagerTab;

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_5
    sget v13, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_7
    const/16 v20, 0x8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/android/finsky/layout/CustomActionBar;->setSelectedTab(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseTwoColumnLayout:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080112

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/AccountSelectorView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->showAccountSelectorIfNecessary(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->onPageScrolled(IFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_7
.end method

.method public refresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindViews()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->clearState()V

    return-void
.end method
