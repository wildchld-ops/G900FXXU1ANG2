.class public Lcom/google/android/finsky/services/DailyHygiene;
.super Landroid/app/Service;
.source "DailyHygiene.java"


# static fields
.field public static final BOOT_DELAY_MS:J

.field private static final HOLDOFF_INTERVAL_MS:J

.field public static final IMMEDIATE_DELAY_MS:J

.field private static final INITIAL_SCHEDULE_JITTER_FACTOR:F

.field private static final REGULAR_INTERVAL_MS:J

.field private static final RESCHEDULE_JITTER_FACTOR:F

.field private static final RETRY_INTERVALS:[I

.field private static final RETRY_INTERVAL_MS:J

.field private static final UPDATE_CHECK:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneImmediateDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->IMMEDIATE_DELAY_MS:J

    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneBootDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->BOOT_DELAY_MS:J

    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneRegularIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneHoldoffIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->HOLDOFF_INTERVAL_MS:J

    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneRetryIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVAL_MS:J

    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneInitialJitterFactor:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/services/DailyHygiene;->INITIAL_SCHEDULE_JITTER_FACTOR:F

    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneJitterFactor:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/services/DailyHygiene;->RESCHEDULE_JITTER_FACTOR:F

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVALS:[I

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/services/DailyHygiene;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/services/DailyHygiene;->UPDATE_CHECK:Landroid/content/Intent;

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/DailyHygiene;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/DailyHygiene;

    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->onLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/DailyHygiene;Z)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/DailyHygiene;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/DailyHygiene;->flushEventLogs(Z)V

    return-void
.end method

.method private flushEventLogs(Z)V
    .locals 9
    .param p1    # Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    move-object v2, v1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    const-string v5, "Flushing event logs for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/DailyHygiene;->reschedule(Z)V

    return-void
.end method

.method public static goMakeHygieneIfDirty(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/finsky/services/DailyHygiene;->needsDailyHygiene()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/services/DailyHygiene;->hasDatabaseVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Dirty, need more hygiene."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->IMMEDIATE_DELAY_MS:J

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "No need to run daily hygiene."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static hasDatabaseVersionChanged()Z
    .locals 3

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/google/android/finsky/library/SQLiteLibrary;->getVersion()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private inHoldoffPeriod()Z
    .locals 12

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v6, 0x0

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneHoldoffExpirationTimestampMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-gez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    cmp-long v5, v0, v8

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->isProvisioned()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v5, v6

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/google/android/finsky/config/G;->dailyHygieneProvisionHoldoffMaxMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-gtz v5, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v5, v6

    goto :goto_0

    :cond_2
    const-string v5, "DailyHygiene holdoff begin"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v0, v5, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v5, v7

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->isProvisioned()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "DailyHygiene holdoff end - provisioned"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v5, v6

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-gez v5, :cond_5

    const-string v5, "DailyHygiene holdoff end - expired"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v5, v6

    goto :goto_0

    :cond_5
    const-string v5, "DailyHygiene holdoff continue"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v7

    goto :goto_0
.end method

.method private isProvisioned()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/services/DailyHygiene;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private static jitter(JF)J
    .locals 2
    .param p0    # J
    .param p2    # F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/finsky/services/DailyHygiene;->jitterLogic(JFF)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static jitterLogic(JFF)J
    .locals 4
    .param p0    # J
    .param p2    # F
    .param p3    # F

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x40000000

    const/high16 v3, 0x3f000000

    sub-float v3, p3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float v0, v1, v2

    long-to-float v1, p0

    mul-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1
.end method

.method private static needsDailyHygiene()Z
    .locals 6

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLoaded()V
    .locals 7

    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/services/ContentSyncService$Facade;->scheduleSync()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    new-instance v0, Lcom/google/android/finsky/appstate/UpdateChecker;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/appstate/UpdateChecker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;)V

    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->cleanup()V

    new-instance v1, Lcom/google/android/finsky/services/DailyHygiene$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/services/DailyHygiene$2;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    new-instance v3, Lcom/google/android/finsky/services/DailyHygiene$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/services/DailyHygiene$3;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    const-string v4, "daily_hygiene"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/finsky/appstate/UpdateChecker;->checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private reschedule(Z)V
    .locals 9
    .param p1    # Z

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    sget-wide v3, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    sget v5, Lcom/google/android/finsky/services/DailyHygiene;->INITIAL_SCHEDULE_JITTER_FACTOR:F

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/services/DailyHygiene;->jitter(JF)J

    move-result-wide v1

    const-string v3, "Scheduling first run in %1.1f hours"

    new-array v4, v8, [Ljava/lang/Object;

    long-to-float v5, v1

    const v6, 0x4a5bba00

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Lcom/google/android/finsky/library/SQLiteLibrary;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :goto_1
    invoke-static {p0, v1, v2}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/google/android/finsky/services/DailyHygiene;->stopSelf()V

    return-void

    :cond_0
    sget-wide v3, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    sget v5, Lcom/google/android/finsky/services/DailyHygiene;->RESCHEDULE_JITTER_FACTOR:F

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/services/DailyHygiene;->jitter(JF)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    sget-object v3, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVALS:[I

    array-length v3, v3

    if-gt v0, v3, :cond_2

    sget-object v3, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVALS:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    int-to-long v3, v3

    sget-wide v5, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVAL_MS:J

    mul-long/2addr v3, v5

    sget v5, Lcom/google/android/finsky/services/DailyHygiene;->RESCHEDULE_JITTER_FACTOR:F

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/services/DailyHygiene;->jitter(JF)J

    move-result-wide v1

    const-string v3, "Scheduling new run in %d minutes (failures=%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/32 v5, 0xea60

    div-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v3, "Giving up. (failures=%d)"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    sget-wide v3, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    sget v5, Lcom/google/android/finsky/services/DailyHygiene;->RESCHEDULE_JITTER_FACTOR:F

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/services/DailyHygiene;->jitter(JF)J

    move-result-wide v1

    goto :goto_1
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # J

    const/4 v4, 0x0

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    sget-object v3, Lcom/google/android/finsky/services/DailyHygiene;->UPDATE_CHECK:Landroid/content/Intent;

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->inHoldoffPeriod()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/google/android/finsky/services/DailyHygiene;->HOLDOFF_INTERVAL_MS:J

    invoke-static {p0, v1, v2}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    :goto_0
    return v3

    :cond_0
    new-instance v0, Lcom/google/android/finsky/services/DailyHygiene$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/DailyHygiene$1;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v1

    const-string v2, "daily-hygiene"

    invoke-interface {v1, v0, v2}, Lcom/google/android/finsky/library/LibraryReplicators;->replicateAllAccounts(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
