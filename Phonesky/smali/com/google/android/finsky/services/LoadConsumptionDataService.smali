.class public Lcom/google/android/finsky/services/LoadConsumptionDataService;
.super Landroid/app/IntentService;
.source "LoadConsumptionDataService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/google/android/finsky/services/LoadConsumptionDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isBackendSupported(I)Z
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportedDataType(I)Z
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private readDataFromCache(Landroid/content/Context;I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # I

    new-instance v2, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v2, p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(I)V

    invoke-static {p1, p2}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "%s doesn\'t exist"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelUtils;->readFromDisk(Ljava/io/File;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static varargs scheduleAlarmForUpdate(Landroid/content/Context;[I)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # [I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/services/LoadConsumptionDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "backendIds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17
    .param p1    # Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v6

    const-string v13, "backendIds"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    array-length v13, v4

    new-array v5, v13, [I

    const/4 v11, 0x0

    move-object v2, v4

    array-length v10, v2

    const/4 v9, 0x0

    move v12, v11

    :goto_0
    if-ge v9, v10, :cond_0

    aget v3, v2, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->readDataFromCache(Landroid/content/Context;I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    add-int/lit8 v11, v12, 0x1

    aput v3, v5, v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v7, v13}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V

    const-string v13, "Was able to read from cache for %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->fetch(Landroid/content/Context;I)V

    add-int/lit8 v9, v9, 0x1

    move v12, v11

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_1

    aget v13, v5, v8

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v13}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->updateWidgets(Landroid/content/Context;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    move v11, v12

    goto :goto_1
.end method
