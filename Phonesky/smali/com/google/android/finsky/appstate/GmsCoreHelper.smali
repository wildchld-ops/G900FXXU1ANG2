.class public Lcom/google/android/finsky/appstate/GmsCoreHelper;
.super Ljava/lang/Object;
.source "GmsCoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;
    }
.end annotation


# static fields
.field private static final NLP_PACKAGE_NAME:Ljava/lang/String;

.field private static final NLP_SHARED_USER_ID:Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;

.field private static sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/finsky/config/G;->gmsCorePackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/config/G;->nlpSharedUserId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_SHARED_USER_ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/config/G;->nlpPackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_PACKAGE_NAME:Ljava/lang/String;

    sput-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    sput-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_SHARED_USER_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/android/finsky/download/InternalDownload;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/android/finsky/analytics/PlayStore$AppData;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/download/Download;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->installNlpCleanup(Lcom/google/android/finsky/download/Download;Ljava/lang/String;)V

    return-void
.end method

.method private static checkForNlpDamage(Lcom/google/android/finsky/FinskyApp;Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;)Z
    .locals 19

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupSdkVersionMin:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    const/4 v15, 0x4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupSdkVersionMax:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v0, v16

    if-le v0, v15, :cond_1

    const/4 v15, 0x4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    const-string v15, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    invoke-virtual {v7}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v15, "network"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object v15, Lcom/google/android/finsky/config/G;->nlpPackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v15, 0x2040

    invoke-virtual {v10, v11, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p1

    iput v4, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->flags:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFlags:Z

    iget v14, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p1

    iput v14, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasVersionCode:Z

    move-object/from16 v0, p1

    iput v8, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->enabled:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasEnabled:Z

    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupFlagsMask:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    and-int v16, v4, v15

    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupFlagsSet:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v0, v16

    if-eq v0, v15, :cond_4

    const-string v15, "NLP incorrect flags %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x6

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v15, "NLP package not found"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x5

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_4
    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupNlpVersionMin:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ge v14, v15, :cond_5

    const-string v15, "NLP version %d too low"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x7

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_5
    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupNlpVersionMax:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v14, v15, :cond_6

    const-string v15, "NLP version %d too high"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x7

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_6
    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupExpectedSignature:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lcom/google/android/finsky/config/G;->nlpCleanupExpectedSignatureTestKeys:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    :goto_1
    const-string v15, "NLP package found but reported inactive"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x2

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFoundTestKeys:Z

    goto :goto_1

    :cond_8
    const-string v15, "NLP signature hash mismatch %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->signatureHash:Ljava/lang/String;

    if-eqz v5, :cond_9

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasSignatureHash:Z

    const/16 v15, 0x8

    move-object/from16 v0, p1

    iput v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public static cleanupNlp(Lcom/google/android/finsky/FinskyApp;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v5, Lcom/google/android/finsky/config/G;->nlpCleanupConfigurationId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupConfigurationId:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_0

    const-string v5, "Resetting state because new config id %d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffUntilBoot:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffAfterInstall:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupConfigurationId:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    invoke-direct {v4}, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;-><init>()V

    invoke-static {p0, v4}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->checkForNlpDamage(Lcom/google/android/finsky/FinskyApp;Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;)Z

    move-result v2

    const-string v5, "result=%b type=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    iget v7, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffUntilBoot:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilBoot:Z

    iput-boolean v8, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilBoot:Z

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffAfterInstall:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffAfterInstall:Z

    iput-boolean v8, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffAfterInstall:Z

    if-eqz v2, :cond_2

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffUntilBoot:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffAfterInstall:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    const-string v5, "Skip repair because holdoff set"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x3

    iput v5, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    iput-boolean v8, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    :cond_2
    :goto_0
    sget-object v5, Lcom/google/android/finsky/config/G;->nlpCleanupLogCommonStatuses:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget v5, v4, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    invoke-static {v5}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isCommonNlpRepairStatus(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logNlpCleanupData(Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {p0, v4}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->downloadAndInstallNlpCleanup(Lcom/google/android/finsky/FinskyApp;Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;)V

    goto :goto_0
.end method

.method private static downloadAndInstallNlpCleanup(Lcom/google/android/finsky/FinskyApp;Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;)V
    .locals 17

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    sput-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    sget-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    iput v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    sget-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasOldVersion:Z

    sget-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->systemApp:Z

    sget-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasSystemApp:Z

    sget-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    iput v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->version:I

    sget-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasVersion:Z

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/finsky/config/G;->nlpCleanupUrlTestKeys:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/config/G;->nlpCleanupCookieNameTestKeys:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/config/G;->nlpCleanupCookieValueTestKeys:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v1 .. v15}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    sput-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    sget-object v1, Lcom/google/android/finsky/config/G;->nlpPackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->getListener(Lcom/google/android/finsky/analytics/FinskyEventLog;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadQueueListener;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    sget-object v1, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v8

    const/16 v9, 0x64

    sget-object v1, Lcom/google/android/finsky/config/G;->nlpPackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void

    :cond_2
    sget-object v1, Lcom/google/android/finsky/config/G;->nlpCleanupUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/config/G;->nlpCleanupCookieName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/config/G;->nlpCleanupCookieValue:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getGmsCorePackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method private static getListener(Lcom/google/android/finsky/analytics/FinskyEventLog;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadQueueListener;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;-><init>(Lcom/google/android/finsky/analytics/FinskyEventLog;Ljava/lang/String;)V

    return-object v0
.end method

.method public static insertGmsCore(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private installGmsCore(Lcom/google/android/finsky/api/model/Document;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v9

    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v9, v1}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v9, v1, v7, v7, v7}, Lcom/google/android/finsky/receivers/Installer;->setVisibility(Ljava/lang/String;ZZZ)V

    new-instance v8, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v8, v1, v4, v5}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v6, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v8, v1, v4, v5, v6}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getAppDetailsAccount(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Cannot update %s because cannot determine update account %s."

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v12}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v11

    if-nez v11, :cond_1

    const-string v1, "Cannot update %s because cannot find library for %s."

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v12}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v11}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move v6, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;ZZ)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p1, v3, v3}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static installNlpCleanup(Lcom/google/android/finsky/download/Download;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    new-instance v8, Lcom/google/android/finsky/appstate/GmsCoreHelper$2;

    invoke-direct {v8, p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper$2;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/finsky/config/G;->nlpCleanupDowngradeFlag:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x6a

    const/4 v4, 0x0

    sget-object v6, Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    invoke-interface {p0}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v8, v1, p1, v7}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackageWithDowngrade(Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Z)V

    return-void
.end method

.method private static isCommonNlpRepairStatus(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGmsCore(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isGmsCore(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static onBootCompleted()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffUntilBoot:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    return-void
.end method

.method public static removeGmsCore(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public updateGmsCore(Lcom/google/android/finsky/api/model/Document;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {p1, v7, v8}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v5, "GMS Core is not available"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v5, "Unable to install something without app details"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-boolean v7, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    if-eqz v7, :cond_3

    const-string v7, "Not updating %s (disabled)"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iget-boolean v7, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v7, :cond_6

    iget-boolean v7, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    if-nez v7, :cond_6

    move v4, v5

    :cond_4
    :goto_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v7

    sget-object v8, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v7, v8, :cond_7

    const-string v7, "Not updating %s (was removed)"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    iget v5, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    if-ge v1, v5, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->installGmsCore(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0
.end method
