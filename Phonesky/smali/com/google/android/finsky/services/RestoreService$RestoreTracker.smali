.class Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTracker"
.end annotation


# instance fields
.field private final ACCOUNT_MAP_KEY_AID:Ljava/lang/String;

.field private final ACCOUNT_MAP_KEY_ATTEMPTS:Ljava/lang/String;

.field private final KEY_VALUE_DIRECTORY:Ljava/lang/String;

.field private final KEY_VALUE_FILE_ACCOUNTS:Ljava/lang/String;

.field private final KEY_VALUE_FILE_PACKAGES:Ljava/lang/String;

.field private final PACKAGE_MAP_ACCOUNT_NAME:Ljava/lang/String;

.field private final PACKAGE_MAP_KEY_ATTEMPTS:Ljava/lang/String;

.field private final PACKAGE_MAP_RETRY_TIME:Ljava/lang/String;

.field private final PACKAGE_MAP_TITLE:Ljava/lang/String;

.field private final PACKAGE_MAP_VERSION_CODE:Ljava/lang/String;

.field private final mAccountStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

.field private mFailed:I

.field private final mPackageStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

.field private mStartupRefCount:I

.field private mSucceeded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/services/RestoreService;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RestoreTracker"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->KEY_VALUE_DIRECTORY:Ljava/lang/String;

    const-string v0, "account-"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->KEY_VALUE_FILE_ACCOUNTS:Ljava/lang/String;

    const-string v0, "package-"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->KEY_VALUE_FILE_PACKAGES:Ljava/lang/String;

    const-string v0, "attempts"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->ACCOUNT_MAP_KEY_ATTEMPTS:Ljava/lang/String;

    const-string v0, "aid"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->ACCOUNT_MAP_KEY_AID:Ljava/lang/String;

    const-string v0, "attempts"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->PACKAGE_MAP_KEY_ATTEMPTS:Ljava/lang/String;

    const-string v0, "versionCode"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->PACKAGE_MAP_VERSION_CODE:Ljava/lang/String;

    const-string v0, "accountName"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->PACKAGE_MAP_ACCOUNT_NAME:Ljava/lang/String;

    const-string v0, "title"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->PACKAGE_MAP_TITLE:Ljava/lang/String;

    const-string v0, "retryTime"

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->PACKAGE_MAP_RETRY_TIME:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/services/RestoreService$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/services/RestoreService;
    .param p2    # Lcom/google/android/finsky/services/RestoreService$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;-><init>(Lcom/google/android/finsky/services/RestoreService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    return-object v0
.end method

.method static synthetic access$1508(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)I
    .locals 2
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)I
    .locals 2
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->initPackagesStore(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writePackageStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->convertEntryToStatus(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->convertEntryToPackageStatus(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    return-object v0
.end method

.method private convertEntryToPackageStatus(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;
    .locals 17
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :catch_0
    move-exception v13

    const-string v13, "attempts"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v13, "versionCode"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "accountName"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v13, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v13, "retryTime"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const-string v13, "Missing data for package %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    if-ltz v2, :cond_2

    sget-object v13, Lcom/google/android/finsky/config/G;->appRestoreDownloadMaxAttempts:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v13}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v2, v13, :cond_3

    :cond_2
    const-string v13, "Reached limit %d for %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v13, "Bad data for package %s (%s, %s, %s, %s)"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    const/4 v15, 0x2

    aput-object v12, v14, v15

    const/4 v15, 0x3

    invoke-static {v1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    aput-object v10, v14, v15

    const/4 v15, 0x5

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v13

    if-nez v13, :cond_4

    const-string v13, "Unknown account %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v6, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;-><init>(Lcom/google/android/finsky/services/RestoreService$1;)V

    iput v2, v6, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->attempts:I

    iput v11, v6, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->versionCode:I

    iput-object v1, v6, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->accountName:Ljava/lang/String;

    iput-object v10, v6, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->title:Ljava/lang/String;

    iput-wide v7, v6, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->retryTime:J

    goto/16 :goto_0
.end method

.method private convertEntryToStatus(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static {p2, p1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "Unknown account %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "attempts"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "aid"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "Missing data for account %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_3

    sget-object v5, Lcom/google/android/finsky/config/G;->appRestoreFetchListMaxAttempts:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v1, v5, :cond_4

    :cond_3
    const-string v5, "Reached limit %d for %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "Bad data for account %s (%s, %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v2, v7, v10

    aput-object v0, v7, v11

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    invoke-direct {v4, v6}, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;-><init>(Lcom/google/android/finsky/services/RestoreService$1;)V

    iput v1, v4, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    iput-object v0, v4, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->androidId:Ljava/lang/String;

    goto :goto_0
.end method

.method private initPackagesStore(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v1, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v2, "RestoreTracker"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "package-"

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v1, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;-><init>(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->load(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->load(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private writeAccountStatus(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "attempts"

    iget v4, v1, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "aid"

    iget-object v4, v1, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->androidId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private writePackageStatus(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "attempts"

    iget v4, v1, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->attempts:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "versionCode"

    iget v4, v1, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "accountName"

    iget-object v4, v1, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->accountName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title"

    iget-object v4, v1, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->title:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "retryTime"

    iget-wide v4, v1, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->retryTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public finishAccount(Ljava/lang/String;ZI)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    const/16 v2, 0x76

    iput v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput p3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    iput-boolean v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    :goto_0
    iput v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->attempts:I

    iput-boolean v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasAttempts:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writeAccountStatus(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->stopServiceIfDone()V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    iput-boolean v3, v1, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->inFlight:Z

    goto :goto_1
.end method

.method public finishPackage(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writePackageStatus(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->stopServiceIfDone()V

    return-void

    :cond_3
    if-nez p3, :cond_0

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    goto :goto_0
.end method

.method public initAccountStore(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v1, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v2, "RestoreTracker"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "account-"

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v1, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$1;-><init>(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->load(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->load(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isAccountInFlight(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->inFlight:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .param p3    # I

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/finsky/services/RestoreService$3;->$SwitchMap$com$google$android$finsky$installer$InstallerListener$InstallerPackageEvent:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    const-string v7, "enum %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p2, v8, v6

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v7, "Restore package %s download cancelled"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v6, v6}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishPackage(Ljava/lang/String;ZZ)V

    goto :goto_0

    :pswitch_2
    const-string v7, "Restore package %s download error %d"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->inErrorRetryBlacklist(I)Z
    invoke-static {v7, p3}, Lcom/google/android/finsky/services/RestoreService;->access$1000(Lcom/google/android/finsky/services/RestoreService;I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v7}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->tryAgainPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v6, v5}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishPackage(Ljava/lang/String;ZZ)V

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->getPackageRestoreIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v6, p1}, Lcom/google/android/finsky/services/RestoreService;->access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    sget-object v6, Lcom/google/android/finsky/config/G;->appRestoreRetryDownloadHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    # invokes: Lcom/google/android/finsky/services/RestoreService;->jitterDelay(J)J
    invoke-static {v7, v8, v9}, Lcom/google/android/finsky/services/RestoreService;->access$1300(Lcom/google/android/finsky/services/RestoreService;J)J

    move-result-wide v0

    iget-object v6, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->setAlarm(Landroid/content/Intent;J)J
    invoke-static {v6, v2, v0, v1}, Lcom/google/android/finsky/services/RestoreService;->access$1400(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;J)J

    move-result-wide v3

    iget-object v6, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v6}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v4}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writePackageRetryTime(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :pswitch_3
    const-string v7, "Restore package %s install error %d"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v6, v6}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishPackage(Ljava/lang/String;ZZ)V

    goto :goto_0

    :pswitch_4
    const-string v7, "Restore package %s install complete"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishPackage(Ljava/lang/String;ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public startAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;-><init>(Lcom/google/android/finsky/services/RestoreService$1;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    iput-object p2, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->androidId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->inFlight:Z

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writeAccountStatus(Ljava/lang/String;)V

    return-void
.end method

.method public startPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;-><init>(Lcom/google/android/finsky/services/RestoreService$1;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->attempts:I

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->attempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->attempts:I

    iput p2, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->versionCode:I

    iput-object p3, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->accountName:Ljava/lang/String;

    iput-object p4, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->title:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->retryTime:J

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writePackageStatus(Ljava/lang/String;)V

    return-void
.end method

.method public stopServiceIfDone()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I

    if-gtz v0, :cond_0

    const-string v0, "Restore complete with %d success and %d failed."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mServiceStartId:I
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService;->access$900(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/services/RestoreService;->stopSelf(I)V

    :cond_0
    return-void
.end method

.method public tryAgainOrDeleteAccount(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    sget-object v1, Lcom/google/android/finsky/config/G;->appRestoreFetchListMaxAttempts:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v4, v1, :cond_0

    const-string v1, "Reached limit %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->attempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writeAccountStatus(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public tryAgainPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget v4, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->attempts:I

    sget-object v1, Lcom/google/android/finsky/config/G;->appRestoreDownloadMaxAttempts:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v4, v1, :cond_1

    const-string v1, "Reached limit %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->attempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public writePackageRetryTime(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # J

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    if-nez v0, :cond_0

    const-string v1, "Unexpected missing package %s, can\'t write retry time"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-wide p2, v0, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->retryTime:J

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writePackageStatus(Ljava/lang/String;)V

    goto :goto_0
.end method
