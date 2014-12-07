.class public Lcom/google/android/finsky/utils/SessionStatsLogger;
.super Ljava/lang/Object;
.source "SessionStatsLogger.java"


# static fields
.field private static sHaveLoggedSessionStats:Z


# direct methods
.method public static logSessionStatsIfNecessary(Landroid/content/Context;)V
    .locals 3

    sget-boolean v1, Lcom/google/android/finsky/utils/SessionStatsLogger;->sHaveLoggedSessionStats:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/config/G;->enableSessionStatsLog:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/finsky/utils/SessionStatsLogger;->sHaveLoggedSessionStats:Z

    :try_start_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/SessionStatsLogger;->logSessionStatsImpl(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fatal exception while logging session stats"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static logSessionStatsImpl(Landroid/content/Context;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    new-instance v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    invoke-direct {v4}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;-><init>()V

    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateEnabled:Z

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateEnabled:Z

    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateOverWifiOnly:Z

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateOverWifiOnly:Z

    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateMigrationDialogShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->autoUpdateCleanupDialogNumTimesShown:I

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAutoUpdateCleanupDialogNumTimesShown:Z

    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v6, v0

    iput v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAccountsOnDevice:I

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAccountsOnDevice:Z

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->getCachedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    iput v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkType:I

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkType:Z

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    iput v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkSubType:I

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkSubType:Z

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->gaiaPasswordAuthOptedOut:Z

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGaiaPasswordAuthOptedOut:Z

    :cond_2
    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->contentFilterLevel:I

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasContentFilterLevel:Z

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v6, v9, :cond_3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "install_non_market_apps"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    :goto_0
    if-ne v5, v10, :cond_4

    const-string v6, "Couldn\'t obtain INSTALL_NON_MARKET_APPS value"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/finsky/billing/PromptForFopHelper;->getSessionLoggingData(Ljava/lang/String;)Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSessionData(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "install_non_market_apps"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    move v6, v7

    :goto_2
    iput-boolean v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->allowUnknownSources:Z

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAllowUnknownSources:Z

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_2
.end method
