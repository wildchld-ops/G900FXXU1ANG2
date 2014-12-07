.class public Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;
.super Landroid/app/Activity;
.source "LaunchUrlHandlerActivity.java"


# static fields
.field private static final BASE_DETAILS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://market.android.com/details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->BASE_DETAILS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getGoToMarketHomeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected static handleUrl(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/analytics/FinskyEventLog;)Landroid/content/Intent;
    .locals 18
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/Intent;
    .param p2    # Lcom/google/android/finsky/appstate/AppStates;
    .param p3    # Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    const-string v1, "url"

    invoke-virtual {v15, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Launch URL without continue URL"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v17, "http"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v17, "market.android.com"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v17, "details"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static/range {p0 .. p1}, Lcom/google/android/finsky/utils/IntentUtils;->createForwardToMainActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v12

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    const-string v1, "id"

    invoke-virtual {v15, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Launch URL without package name"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getGoToMarketHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_0

    :cond_2
    const-string v1, "min_version"

    invoke-virtual {v15, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v4, -0x1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_3
    :goto_1
    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v13, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    :cond_4
    if-ltz v13, :cond_5

    if-lt v13, v4, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-static {v10}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {v14, v3, v2}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(Ljava/lang/String;Ljava/lang/String;IZZ)V

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v7, :cond_0

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->cancel(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v3, v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const-string v1, "referrer"

    invoke-virtual {v15, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->BASE_DETAILS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v1, "id"

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "url"

    invoke-virtual {v9, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "referrer"

    invoke-virtual {v9, v1, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/IntentUtils;->createForwardToMainActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v12

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->isLimitedOrEduUser()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->showLimitedUserUI(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getGoToMarketHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/config/G;->launchUrlsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;-><init>(Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;Landroid/content/Intent;Lcom/google/android/finsky/appstate/AppStates;)V

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
