.class public Lcom/google/android/finsky/activities/AutoUpdateMigrationHelper;
.super Ljava/lang/Object;
.source "AutoUpdateMigrationHelper.java"


# direct methods
.method public static handleNegativeClick()V
    .locals 0

    invoke-static {}, Lcom/google/android/finsky/activities/AutoUpdateMigrationHelper;->updateDialogTracking()V

    return-void
.end method

.method public static handlePositiveClick()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/finsky/activities/AutoUpdateMigrationHelper;->updateDialogTracking()V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->setAllAppsToUseGlobalDefault(Lcom/google/android/finsky/appstate/AppStates;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->hasAcceptedAutoUpdateMigrationDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public static launchAutoUpdateMigrationDialog(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v8, 0x7f090342

    :goto_0
    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090212

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x132

    const/16 v3, 0xed

    const/16 v4, 0xec

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0, p2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const v8, 0x7f090343

    goto :goto_0
.end method

.method public static shouldShowAutoUpdateMigrationDialog()Z
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->hadPreJsAutoUpdateSettings:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/google/android/finsky/config/G;->skipAutoUpdateCleanupClientVersionCheck:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->hasAcceptedAutoUpdateMigrationDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateMigrationDialogShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v4, Lcom/google/android/finsky/config/G;->maxAutoUpdateDialogShownCount:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v7, v4, :cond_0

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateMigrationDialogShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    sget-object v4, Lcom/google/android/finsky/config/G;->autoUpdateDialogSubsequentBackoffDays:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    :goto_1
    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->lastUpdateMigrationDialogTimeShown:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v7, 0x5265c00

    int-to-long v9, v0

    mul-long/2addr v7, v9

    add-long/2addr v7, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gez v4, :cond_2

    move v4, v5

    :goto_2
    move v6, v4

    goto :goto_0

    :pswitch_0
    move v6, v5

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/google/android/finsky/config/G;->autoUpdateDialogFirstBackoffDays:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/google/android/finsky/config/G;->autoUpdateDialogSecondBackoffDays:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static final updateDialogTracking()V
    .locals 4

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateMigrationDialogShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateMigrationDialogShownCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->lastUpdateMigrationDialogTimeShown:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method
