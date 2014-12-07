.class public Lcom/google/android/finsky/activities/PlayGamesInstallHelper;
.super Ljava/lang/Object;
.source "PlayGamesInstallHelper.java"


# direct methods
.method public static addGameIntentExtras(Lcom/google/android/finsky/api/model/Document;Landroid/content/Intent;)V
    .locals 4
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Landroid/content/Intent;

    const/4 v3, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "game"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "is_game"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasBadgeContainer()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "has_game_features"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static handlePositiveClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 2
    .param p0    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/finsky/activities/PlayGamesInstallHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PlayGamesInstallHelper$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static isGameIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0    # Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v1, "is_game"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/google/android/finsky/config/G;->playGamesInstallSuggestionOnlyWhenGameFeatures:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "has_game_features"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static launchPlayGamesInstallDialog(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;)V
    .locals 9
    .param p0    # Landroid/support/v4/app/FragmentManager;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v0, 0x7f0400f2

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setLayoutId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setViewConfiguration(Landroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x13e

    const/16 v3, 0x112

    const/16 v4, 0x113

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0, p2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->playGamesInstallSuggestionShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->playGamesInstallSuggestionShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->playGamesInstallSuggestionLastTimeShown:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldSuggestPlayGames()Z
    .locals 15

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v8, Lcom/google/android/finsky/config/G;->playGamesInstallSuggestionMaxShownCount:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    sget-object v8, Lcom/google/android/finsky/utils/FinskyPreferences;->playGamesInstallSuggestionShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v5, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v7

    sget-object v8, Lcom/google/android/finsky/config/G;->gmsCorePackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v11, v2, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    sget-object v8, Lcom/google/android/finsky/config/G;->playGamesGmsCoreMinVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v11, v8, :cond_0

    sget-object v8, Lcom/google/android/finsky/config/G;->playGamesDocId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v8

    if-nez v8, :cond_0

    packed-switch v6, :pswitch_data_0

    sget-object v8, Lcom/google/android/finsky/config/G;->playGamesInstallSuggestionSubsequentBackoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    sget-object v8, Lcom/google/android/finsky/utils/FinskyPreferences;->playGamesInstallSuggestionLastTimeShown:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v11, v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-gez v8, :cond_2

    move v8, v9

    :goto_2
    move v10, v8

    goto :goto_0

    :pswitch_0
    move v10, v9

    goto :goto_0

    :pswitch_1
    sget-object v8, Lcom/google/android/finsky/config/G;->playGamesInstallSuggestionFirstBackoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move v8, v10

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
