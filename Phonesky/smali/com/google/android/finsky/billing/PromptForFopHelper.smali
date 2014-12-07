.class public Lcom/google/android/finsky/billing/PromptForFopHelper;
.super Ljava/lang/Object;
.source "PromptForFopHelper.java"


# direct methods
.method static synthetic access$000(Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/PromptForFopHelper;->updateHasValidFopCache(Ljava/lang/String;Z)V

    return-void
.end method

.method public static expireHasNoFop(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->accountHasFopLastUpdateMs:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    const-string v0, "Invalidated has_fop cache. (account=%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->snooze(Ljava/lang/String;)V

    return-void
.end method

.method public static getSessionLoggingData(Ljava/lang/String;)Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;
    .locals 3
    .param p0    # Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;-><init>()V

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->accountHasFop:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFop:Z

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasHasFop:Z

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopAddedFop:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->fopAdded:Z

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFopAdded:Z

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumDialogImpressions:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numDialogShown:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumDialogShown:Z

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumFopSelectorImpressions:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numFopSelectorShown:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumFopSelectorShown:Z

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumSnoozed:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numSnooze:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumSnooze:Z

    return-object v0
.end method

.method private static getSnoozePeriodMs(I)J
    .locals 11
    .param p0    # I

    const/4 v10, 0x1

    const-wide/16 v5, -0x1

    const/4 v9, 0x0

    sget-object v7, Lcom/google/android/finsky/config/G;->promptForFopSnoozeScheduleM:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v7, "No snooze schedule."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v5

    :cond_0
    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->commaUnpackStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v7, p0, -0x1

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gez v1, :cond_1

    const-string v7, "Invalid snooze schedule: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    aget-object v2, v4, v1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/16 v7, 0x3c

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "Invalid snooze period: %s. Schedule: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static isExperimentEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/FinskyApp;->getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    const-string v1, "cl:billing.prompt_for_fop"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isHasFopCacheValid(Ljava/lang/String;J)Z
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # J

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->accountHasFop:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "has_fop=true cache valid. (account=%s)"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->accountHasFopLastUpdateMs:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/finsky/config/G;->hasFopCacheTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v0

    cmp-long v2, v5, p1

    if-lez v2, :cond_3

    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "has_fop=false cache valid. (account=%s)"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const-string v2, "has_fop=false cache invalid. (account=%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    goto :goto_0
.end method

.method public static isSnoozed(Ljava/lang/String;J)Z
    .locals 11
    .param p0    # Ljava/lang/String;
    .param p1    # J

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumSnoozed:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v6, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v8, :cond_0

    :goto_0
    return v7

    :cond_0
    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopLastSnoozedTimestampMs:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v6, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/finsky/billing/PromptForFopHelper;->getSnoozePeriodMs(I)J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v6, v2, v9

    if-ltz v6, :cond_1

    add-long v9, v4, v2

    cmp-long v6, v9, p1

    if-lez v6, :cond_3

    :cond_1
    move v0, v8

    :goto_1
    sget-boolean v6, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "is_snoozed=%b (account=%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {p0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v8

    invoke-static {v6, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v7, v0

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1
.end method

.method public static recordDialogImpression(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumDialogImpressions:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public static recordFopAdded(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopAddedFop:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public static recordFopSelectorImpression(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumFopSelectorImpressions:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public static refreshHasFopCacheIfNecessary(Lcom/google/android/finsky/api/DfeApi;)V
    .locals 7
    .param p0    # Lcom/google/android/finsky/api/DfeApi;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-interface {p0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Not checking for valid FOP because experiment is disabled. (account=%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/PromptForFopHelper;->isHasFopCacheValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/PromptForFopHelper;->isSnoozed(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Not checking for valid FOP because snoozed. (account=%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/finsky/billing/PromptForFopHelper$1;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/billing/PromptForFopHelper$1;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/finsky/billing/PromptForFopHelper$2;

    invoke-direct {v4}, Lcom/google/android/finsky/billing/PromptForFopHelper$2;-><init>()V

    invoke-interface {p0, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->checkInstrument(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public static shouldPromptForFop(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/billing/PromptForFopHelper;->isHasFopCacheValid(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->accountHasFop:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/billing/PromptForFopHelper;->isSnoozed(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static snooze(Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/String;

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopLastSnoozedTimestampMs:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumSnoozed:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->promptForFopNumSnoozed:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/google/android/finsky/billing/PromptForFopHelper;->getSnoozePeriodMs(I)J

    move-result-wide v1

    const-string v3, "Snoozing for %d ms (account=%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static updateHasValidFopCache(Ljava/lang/String;Z)V
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->accountHasFop:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->accountHasFopLastUpdateMs:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const-string v0, "has_fop cache updated to: %b (account=%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
