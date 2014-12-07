.class public Lcom/google/android/finsky/activities/MainActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# static fields
.field private static sBillingInitialized:Z


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mAutoUpdateItem:Landroid/view/MenuItem;

.field private mBitmapSequenceNumberToDrainFrom:I

.field private mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mLastShownErrorHash:I

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

.field private mPageNeedsRefresh:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSequenceNumberToDrainFrom:I

.field private final mStopPreviewsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    iput v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    iput v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapSequenceNumberToDrainFrom:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$1;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$2;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/MainActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/activities/MainActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBilling()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBillingCountries()V

    return-void
.end method

.method private buildAnalyticsUrl(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculateSideDrawerWidth()I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x7f0b0080

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/finsky/utils/VendingUtils;->isTv()Z

    move-result v3

    if-eqz v3, :cond_0

    div-int/lit8 v3, v2, 0x5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    mul-int/lit8 v3, v2, 0x4

    div-int/lit8 v3, v3, 0x5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_1
    div-int/lit8 v3, v2, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method private checkHasPromoOffers(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;-><init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;)V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getMyDownloadsIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.VIEW_MY_DOWNLOADS_WITH_UPDATE_ALL_PROMPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideLoadingIndicator()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideErrorMessage()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v0, "authAccount"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v0, "authAccount"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "b/5160617: Switching account to %s due to intent"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8, v6}, Lcom/google/android/finsky/activities/MainActivity;->switchAccount(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->maybeShowDownloadManagerDisabledDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->maybeShowGmsCoreDisabledDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v6}, Lcom/google/android/finsky/activities/MainActivity;->maybeShowErrorDialog(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->closeSideDrawer()V

    :cond_2
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lcom/google/android/finsky/activities/MainActivity;->handleSearchIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.google.android.finsky.NAVIGATIONAL_SUGGESTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v6}, Lcom/google/android/finsky/activities/MainActivity;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    invoke-direct {p0, v6}, Lcom/google/android/finsky/activities/MainActivity;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v0, "com.google.android.finsky.DETAILS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v5, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v0, v4, v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;Z)V

    goto :goto_0

    :cond_8
    const-string v0, "com.google.android.finsky.VIEW_MY_DOWNLOADS_WITH_UPDATE_ALL_PROMPT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v0, v4, v11}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;Z)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "com.google.android.finsky.CORPUS_HOME"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "backend_id"

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "title"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "com.google.android.finsky.VIEW_BROWSE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "backend_id"

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "title"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "clear_back_stack"

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isBackStackEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto/16 :goto_0
.end method

.method private handleSearchIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1, v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sendSuggestionClickedLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0
.end method

.method private handleViewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "deepLink"

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/activities/MainActivity;->buildAnalyticsUrl(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/analytics/Analytics;->logAdMobPageView(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dont_resolve_again"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->openInBrowser(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->handleDeepLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideErrorMessage()V
    .locals 2

    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initializeBilling()V
    .locals 2

    sget-boolean v0, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    const-string v0, "Optimistically initializing billing parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$5;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initializeBillingCountries()V
    .locals 3

    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private launchUrlInBrowser(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private logMenuClickEvent(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private maybeShowDownloadManagerDisabledDialog()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v5

    const-string v6, "com.android.providers.downloads"

    invoke-interface {v5, v6}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v5, "Cannot find com.android.providers.downloads"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v5, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    if-eqz v5, :cond_0

    :cond_2
    const-string v5, "Detected disabled com.android.providers.downloads"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v5, "download_manager_disabled"

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const/16 v5, 0x28

    invoke-virtual {v0, v7, v5, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090129

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090212

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090076

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    const-string v4, "download_manager_disabled"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private maybeShowErrorDialog(Landroid/content/Intent;)V
    .locals 7

    const-string v5, "error_html_message"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    const-string v5, "error_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "error_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "error_html_message"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "error_doc_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v5, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    if-eq v5, v1, :cond_1

    const-string v5, "error_return_code"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v4, v2, v3, v0}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    iput v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    :cond_1
    return-void
.end method

.method private maybeShowGmsCoreDisabledDialog()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->getGmsCorePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v6, "Cannot find com.google.android.gms"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean v6, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-nez v6, :cond_3

    iget-boolean v6, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    if-eqz v6, :cond_0

    :cond_3
    const-string v6, "Detected disabled com.google.android.gms"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v6, "gms_core_disabled"

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const/16 v6, 0x2a

    invoke-virtual {v0, v8, v6, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09012a

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090212

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090076

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    const-string v5, "gms_core_disabled"

    invoke-virtual {v1, v2, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private openInBrowser(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setDebugActivityEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/finsky/activities/DebugActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private setupDcbDebugMenu(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f08025f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$11;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private setupDebugMenu(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f08025e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$10;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v4

    invoke-interface {v4, p4}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    packed-switch p3, :pswitch_data_0

    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v2

    :pswitch_0
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v4, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/MainActivity;->showMismatchedCertificatesDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showErrorMessage(Lcom/android/volley/VolleyError;)V
    .locals 5

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    :goto_0
    return-void

    :cond_0
    instance-of v3, p1, Lcom/google/android/finsky/utils/BgDataDisabledError;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showBackgroundDataDialog()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isBackStackEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080130

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/activities/MainActivity$12;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/MainActivity$12;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private showMismatchedCertificatesDialog(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v3, 0x7f090105

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090212

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090150

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "error_package_name"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "mismatched_certificates"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showRestartRequiredDialog()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const/16 v2, 0x29

    invoke-virtual {v0, v3, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09012b

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090212

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "restart_required"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateAutoUpdateMenuItem()V
    .locals 7

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mAutoUpdateItem:Landroid/view/MenuItem;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    invoke-static {}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->shouldUseSystemActionBar()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/finsky/layout/AutoUpdateSection;->isAutoUpdateVisible(Ljava/lang/String;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mAutoUpdateItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/layout/AutoUpdateSection;->isAutoUpdateEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mAutoUpdateItem:Landroid/view/MenuItem;

    const v4, 0x7f0200b3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mAutoUpdateItem:Landroid/view/MenuItem;

    const v4, 0x7f0902f5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mAutoUpdateItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mAutoUpdateItem:Landroid/view/MenuItem;

    const v4, 0x7f0200b2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBackend()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->getCurrentBackendId()I

    move-result v0

    return v0
.end method

.method public getCurrentBreadcrumb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->getBreadcrumbText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    return-object v0
.end method

.method public getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->getSideDrawerDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public goBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->onBackPressed()V

    return-void
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .locals 3

    instance-of v2, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/volley/AuthFailureError;

    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->handleUserAuthentication(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideLoadingIndicator()V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->showErrorMessage(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/16 v5, 0x1f

    if-ne p1, v5, :cond_0

    const/16 v5, 0x28

    if-ne p2, v5, :cond_0

    const-string v4, "b/5160617: Reinitialize with null accountafter user changed content level"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/finsky/activities/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/MainActivity$6;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/MainActivity;->runOrScheduleActiveStateRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const/16 v5, 0x21

    if-ne p1, v5, :cond_5

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const-string v5, "backend"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "involved_heavy_dialogs"

    invoke-virtual {p3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p3}, Lcom/google/android/finsky/activities/PlayGamesInstallHelper;->isGameIntent(Landroid/content/Intent;)Z

    move-result v2

    const/4 p3, 0x0

    :cond_1
    if-ne p2, v6, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->shouldShowGaiaRecoveryDialog()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/google/android/finsky/activities/MainActivity$7;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/MainActivity$7;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/finsky/activities/AutoUpdateMigrationHelper;->shouldShowAutoUpdateMigrationDialog()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/google/android/finsky/activities/MainActivity$8;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/MainActivity$8;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/finsky/activities/PlayGamesInstallHelper;->shouldSuggestPlayGames()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/google/android/finsky/activities/MainActivity$9;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/MainActivity$9;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    const/16 v5, 0x22

    if-ne p1, v5, :cond_7

    if-ne p2, v6, :cond_6

    move v3, v4

    :cond_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    const/16 v6, 0x1f7

    invoke-virtual {v5, v6, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/android/finsky/api/DfeApi;->invalidatePlusProfile(Z)V

    goto :goto_1

    :cond_7
    const/16 v4, 0x27

    if-ne p1, v4, :cond_2

    invoke-static {p2, p3}, Lcom/google/android/finsky/utils/GPlusUtils;->circlePickerOnActivityResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCleanup()V
    .locals 11

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v9

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getBitmapRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(II)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v8, :cond_0

    const-string v8, "Should not be here after state was saved"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->flush()Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f080046

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v8, 0x7f080047

    if-eq v2, v8, :cond_1

    const v8, 0x7f080048

    if-eq v2, v8, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showLoadingIndicator()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->getDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const v0, 0x7f04009a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setContentView(I)V

    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$3;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    if-eqz p1, :cond_0

    const-string v0, "last_shown_error_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isBackStackEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideLoadingIndicator()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideErrorMessage()V

    :cond_1
    const v0, 0x7f080175

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->calculateSideDrawerWidth()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->configure(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setDefaultKeyMode(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    const v1, 0x7f080258

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mAutoUpdateItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateAutoUpdateMenuItem()V

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->terminate()V

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    move v4, v1

    :goto_1
    return v4

    :pswitch_1
    iget-object v5, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {p0, v5, v4}, Lcom/google/android/finsky/layout/AutoUpdateSection;->handleAutoUpdateButtonClick(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    goto :goto_0

    :pswitch_2
    const/16 v4, 0x6f

    invoke-direct {p0, v4}, Lcom/google/android/finsky/activities/MainActivity;->logMenuClickEvent(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    const-class v5, Lcom/google/android/finsky/activities/SettingsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x1f

    invoke-virtual {p0, v2, v4}, Lcom/google/android/finsky/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    const/16 v5, 0x70

    invoke-direct {p0, v5}, Lcom/google/android/finsky/activities/MainActivity;->logMenuClickEvent(I)V

    sget-object v5, Lcom/google/android/finsky/config/G;->supportUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/MainActivity;->launchUrlInBrowser(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    sget-object v5, Lcom/google/android/finsky/config/G;->extraMenuItemUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->launchUrlInBrowser(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f080258
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "error_package_name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/google/android/finsky/activities/AutoUpdateMigrationHelper;->handleNegativeClick()V

    goto :goto_0

    :sswitch_2
    const-string v1, "Shutting down because download manager remains disabled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :sswitch_3
    const-string v1, "Shutting down because gms core remains disabled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x24 -> :sswitch_1
        0x28 -> :sswitch_2
        0x2a -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->onNewIntentDirect(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->getDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->wishlistButtonClicked(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->shareButtonClicked(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->autoUpdateButtonClicked(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080015 -> :sswitch_1
        0x7f080016 -> :sswitch_2
        0x7f080257 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPause()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapSequenceNumberToDrainFrom:I

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->onPositiveClick(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-static {}, Lcom/google/android/finsky/activities/AutoUpdateMigrationHelper;->handlePositiveClick()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->onPositiveGaiaRecoveryDialogResponse()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1}, Lcom/google/android/finsky/activities/PlayGamesInstallHelper;->handlePositiveClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    goto :goto_0

    :pswitch_5
    const-string v1, "Attempting to enable download manager"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->showRestartRequiredDialog()V

    goto :goto_0

    :pswitch_6
    const-string v1, "Attempting to enable gms core"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->getGmsCorePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->showRestartRequiredDialog()V

    goto :goto_0

    :pswitch_7
    const-string v1, "Shutting down after download manager or gms core re-enabled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->getDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    sget-object v2, Lcom/google/android/finsky/config/G;->extraMenuItemTitle:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f08025c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->setDebugActivityEnabled(Z)V

    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V

    :cond_1
    sget-object v2, Lcom/google/android/finsky/config/G;->dcbDebugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDcbDebugMenu(Landroid/view/Menu;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateAutoUpdateMenuItem()V

    return v3
.end method

.method protected onReady(Z)V
    .locals 3

    invoke-static {p0}, Lcom/google/android/finsky/utils/SessionStatsLogger;->logSessionStatsIfNecessary(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->prefetchAndCacheGaiaAuthRecoveryIntent(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->refreshHasFopCacheIfNecessary(Lcom/google/android/finsky/api/DfeApi;)V

    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/MainActivity$4;-><init>(Lcom/google/android/finsky/activities/MainActivity;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->checkHasPromoOffers(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->refresh(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onRestart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onResume()V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->syncActionBarIconState()V

    :cond_1
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "last_shown_error_hash"

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->serialize(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->searchButtonClicked(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSearchRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onStop()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapSequenceNumberToDrainFrom:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapSequenceNumberToDrainFrom:I

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    iget v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapSequenceNumberToDrainFrom:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(II)V

    iput v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    iput v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapSequenceNumberToDrainFrom:I

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_0

    :cond_2
    const-string v1, "Unknown error with empty error message."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->updateCurrentBackendId(I)V

    return-void
.end method
