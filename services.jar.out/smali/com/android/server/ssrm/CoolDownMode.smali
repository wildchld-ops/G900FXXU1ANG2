.class public Lcom/android/server/ssrm/CoolDownMode;
.super Ljava/lang/Object;
.source "CoolDownMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field BATTERY_COOLDOWN_TEMP_6:I

.field BATTERY_COOLDOWN_TEMP_8:I

.field final CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field final CHECK_COOLDOWN_LIST:Ljava/lang/String;

.field DELAY_FOR_SIOPLEVE_6:I

.field DELAY_FOR_SIOPLEVE_8:I

.field final OVERHEAT_ID:Ljava/lang/String;

.field VZW_COOLDOWN_TEMP_LEVEL_6:I

.field VZW_COOLDOWN_TEMP_LEVEL_8:I

.field final VZW_COOL_DOWN_LEVEL_0:I

.field final VZW_COOL_DOWN_LEVEL_6:I

.field final VZW_COOL_DOWN_LEVEL_8:I

.field isSetupWizardCompleted:Z

.field private final mCD:Ljava/io/File;

.field mCurSIOPStep:I

.field mDisableCoolDown:Z

.field mExceptionList:[Ljava/lang/String;

.field mExceptionListInCall:[Ljava/lang/String;

.field final mIntentCheckCooldownLevel:Landroid/content/Intent;

.field mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

.field mPrevSIOPStep:I

.field mSendSIOPLevelDelay:J

.field mStartKillActiveApplicationsRunnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x39
        0x15
        0x15
        0x16
        0x3e
        0x15
        0xd
        0x14
        0x37
        0x15
        0x1e
        0x1f
    .end array-data
.end method

.method constructor <init>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    const/16 v0, 0x262

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_6:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_8:I

    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_0:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_6:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_8:I

    iput-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    const-string v0, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v0, "check_cooldown_level"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    const-string v0, "check_cooldown_list"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_COOLDOWN_LIST:Ljava/lang/String;

    const-string v0, "overheat_id"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->OVERHEAT_ID:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x25

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mCD:Ljava/io/File;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x1c

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-static {v2}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionList:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    new-array v1, v5, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1a

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1d

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionListInCall:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/ssrm/CoolDownMode$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CoolDownMode$2;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mCD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    const/16 v0, 0x29e

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-eqz v0, :cond_1

    :cond_3
    const/16 v0, 0x276

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    goto :goto_0

    :array_0
    .array-data 4
        0x55
        0x1e
        0x1b
        0xe
        0x1b
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x9
        0x9
        0x8
        0x17
        0x25
        0xc
        0x48
        0x54
        0x19
        0x15
        0x15
        0x16
        0x1e
        0x15
        0xd
        0x14
        0x25
        0x1e
        0x13
        0x9
        0x1b
        0x18
        0x16
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x11
        0x14
        0x15
        0x2
        0x54
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x13
        0x14
        0x1f
        0x8
        0x1b
        0x1d
        0x1f
        0x14
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x19
        0xe
        0x9
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xa
        0x12
        0x15
        0x14
        0x1f
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x13
        0x14
        0x19
        0x1b
        0x16
        0x16
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xc
        0x0
        0x14
        0x1b
        0xc
        0x13
        0x1d
        0x1b
        0xe
        0x15
        0x8
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x9
        0x1f
        0xe
        0xe
        0x13
        0x14
        0x1d
        0x9
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x16
        0x16
        0x9
        0x12
        0x1b
        0x8
        0x1f
        0x19
        0x1b
        0x9
        0xe
        0xa
        0x16
        0x1b
        0x3
        0x1f
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0xd
        0x1c
        0x1e
        0x18
        0x8
        0x15
        0x11
        0x1f
        0x8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/CoolDownMode;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CoolDownMode;->killActiveApplications(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getLaunchers()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v4, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private killActiveApplications(I)I
    .locals 16

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v10

    const-string v13, "checkingSIOP"

    const-string v14, "killActiveApplications start"

    invoke-static {v13, v14}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ssrm/CoolDownMode;->getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v13}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    const/16 v13, 0x8

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/CoolDownMode;->getLaunchers()Ljava/util/HashMap;

    move-result-object v8

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionList:[Ljava/lang/String;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v11, v1, v3

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v13, v10, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionListInCall:[Ljava/lang/String;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v11, v1, v3

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_6

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "com.vznavigator"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v13, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " killActiveApplications : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v13, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v13, "com.sec.android.app.videoplayer"

    iget-object v14, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    sget-object v13, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " killActiveApplications : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v14, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v7, v13

    :cond_a
    :goto_6
    return v7

    :cond_b
    const/4 v13, 0x6

    move/from16 v0, p1

    if-lt v0, v13, :cond_d

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    const/16 v13, 0x12

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    invoke-static {v13}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_a

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v14, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, -0x1

    goto :goto_6

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x14
        0xe
        0x15
        0x54
        0x9
        0xe
        0x1b
        0x18
        0x13
        0x16
        0x13
        0xe
        0x3
    .end array-data
.end method

.method private static x([I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changePermissons(Ljava/io/File;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v2, "android.os.FileUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setPermissions"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method isSetupWizardFinished()Z
    .locals 3

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : true "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : false "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "26653696"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCD:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    const-string v3, "Cooldown mode : [OFF]"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCD:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v3, "Cooldown mode : [ON]"

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCD:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iput-boolean v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    goto :goto_1
.end method

.method public showCoolDownAlert(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a64

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a63

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a65

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/ssrm/CoolDownMode$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CoolDownMode$1;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public startVZWCoolDownMode(I)V
    .locals 11

    const v10, 0x1040a62

    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, v2, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-nez v3, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v7, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-eqz v3, :cond_0

    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryTemperature()I

    move-result v0

    sget-object v3, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Current Battery Temperature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", apTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    if-ge p1, v3, :cond_5

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_8:I

    if-lt v0, v3, :cond_8

    :cond_5
    iput v9, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    :goto_1
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iget v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoolDownLevel is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "sys.siop.level"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v3, v9, :cond_b

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    :goto_2
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    :cond_6
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-eqz v3, :cond_7

    iput-boolean v7, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    if-ge p1, v3, :cond_9

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_6:I

    if-lt v0, v3, :cond_a

    :cond_9
    iput v8, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_1

    :cond_a
    iput v6, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_1

    :cond_b
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v3, v8, :cond_c

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    const/16 v3, 0x12

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_level"

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "overheat_id"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_c
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_level"

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "overheat_id"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x14
        0xe
        0x15
        0x54
        0x9
        0xe
        0x1b
        0x18
        0x13
        0x16
        0x13
        0xe
        0x3
    .end array-data
.end method
