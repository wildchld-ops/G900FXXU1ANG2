.class public Lcom/google/android/finsky/utils/DeviceConfigurationHelper;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;,
        Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;
    }
.end annotation


# static fields
.field private static sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

.field private static sRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sRequests:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    invoke-static {p0}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->doNextRequest(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V

    return-void
.end method

.method public static customizeDeviceConfiguration(Landroid/content/Context;Lcom/google/android/finsky/protos/DeviceConfigurationProto;)V
    .locals 11
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    iget-object v7, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v7, v9, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p1, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    :cond_2
    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v8, v7, v9

    sget-object v8, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v8, v7, v10

    iput-object v7, p1, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_3
    new-array v7, v10, [Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v8, v7, v9

    iput-object v7, p1, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    goto :goto_1
.end method

.method private static doNextRequest(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
    .locals 4
    .param p0    # Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    const/4 v3, 0x0

    sget-object v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Empty request queue"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    if-eq v0, p0, :cond_2

    const-string v1, "Completed request mismatch"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    invoke-static {v1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->doUploadDeviceConfiguration(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V

    goto :goto_0
.end method

.method private static doUploadDeviceConfiguration(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
    .locals 11
    .param p0    # Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    iget-object v3, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;->dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-boolean v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;->gcmOnly:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;->listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getToken()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;-><init>(Ljava/lang/String;Lcom/google/android/finsky/protos/DeviceConfigurationProto;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V

    new-instance v10, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;

    invoke-direct {v10, v4, p0}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;-><init>(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V

    move-object v5, v3

    move-object v6, v2

    move-object v7, v1

    move-object v9, v0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/finsky/api/DfeApi;->uploadDeviceConfig(Lcom/google/android/finsky/protos/DeviceConfigurationProto;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getDeviceConfiguration()Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    move-result-object v2

    goto :goto_0
.end method

.method public static declared-synchronized getDeviceConfiguration()Lcom/google/android/finsky/protos/DeviceConfigurationProto;
    .locals 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-class v11, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;

    monitor-enter v11

    :try_start_0
    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-nez v8, :cond_0

    new-instance v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-direct {v8}, Lcom/google/android/finsky/protos/DeviceConfigurationProto;-><init>()V

    sput-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const-string v8, "activity"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/finsky/utils/VendingUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v6

    const-string v8, "window"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v12, v1, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-static {v12}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getTouchScreenId(I)I

    move-result v12

    iput v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->touchScreen:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v12, v1, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-static {v12}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getKeyboardConfigId(I)I

    move-result v12

    iput v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->keyboard:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasKeyboard:Z

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v12, v1, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    invoke-static {v12}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getNavigationId(I)I

    move-result v12

    iput v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->navigation:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasNavigation:Z

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v12, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    iput v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glEsVersion:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    sget-object v12, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v12, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenWidth:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    sget-object v12, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v12, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenHeight:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v12, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenDensity:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    sget-object v12, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v8, v1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v8, v8, 0x1

    if-lez v8, :cond_1

    move v8, v9

    :goto_0
    iput-boolean v8, v12, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHardKeyboard:Z

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    sget-object v12, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v8, v1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v8, v8, 0x2

    if-lez v8, :cond_2

    move v8, v9

    :goto_1
    iput-boolean v8, v12, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasFiveWayNavigation:Z

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iget v9, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v9}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getScreenLayoutSizeId(I)I

    move-result v9

    iput v9, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenLayout:I

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    new-instance v8, Lcom/google/android/finsky/utils/GlExtensionReader;

    invoke-direct {v8}, Lcom/google/android/finsky/utils/GlExtensionReader;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/finsky/utils/GlExtensionReader;->getGlExtensions()Ljava/util/List;

    move-result-object v4

    sget-object v9, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, v9, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-static {v3, v8}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->customizeDeviceConfiguration(Landroid/content/Context;Lcom/google/android/finsky/protos/DeviceConfigurationProto;)V

    :cond_0
    sget-object v8, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-object v8

    :cond_1
    move v8, v10

    goto :goto_0

    :cond_2
    move v8, v10

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v11

    throw v8
.end method

.method private static getKeyboardConfigId(I)I
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getNavigationId(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getScreenLayoutSizeId(I)I
    .locals 2
    .param p0    # I

    and-int/lit8 v0, p0, 0xf

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->deviceConfigToken:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getTouchScreenId(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static invalidateToken()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->deviceConfigToken:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    return-void
.end method

.method private static postUploadRequest(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;)V
    .locals 3
    .param p0    # Lcom/google/android/finsky/api/DfeApi;
    .param p1    # Z
    .param p2    # Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    new-instance v0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;-><init>(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;)V

    sget-object v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->doUploadDeviceConfiguration(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V

    :cond_0
    return-void
.end method

.method public static requestToken(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/DfeApi;
    .param p1    # Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->postUploadRequest(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;)V

    return-void
.end method

.method public static uploadGcmRegistrationId(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/google/android/finsky/api/DfeApi;
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->postUploadRequest(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;)V

    return-void
.end method
