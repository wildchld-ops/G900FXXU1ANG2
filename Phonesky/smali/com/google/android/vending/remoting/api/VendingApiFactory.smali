.class public Lcom/google/android/vending/remoting/api/VendingApiFactory;
.super Ljava/lang/Object;
.source "VendingApiFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private final mVendingApiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/vending/remoting/api/VendingApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/volley/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mVendingApiMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method private getApiContext(Landroid/accounts/Account;)Lcom/google/android/vending/remoting/api/VendingApiContext;
    .locals 19
    .param p1    # Landroid/accounts/Account;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->clientId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->loggingId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/vending/remoting/api/VendingApiContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v15

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t find our own package"

    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;
    .locals 5
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mVendingApiMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mVendingApiMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/api/VendingApi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/vending/remoting/api/VendingApi;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, p1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/vending/remoting/api/VendingApiFactory;->getApiContext(Landroid/accounts/Account;)Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/android/vending/remoting/api/VendingApi;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/vending/remoting/api/VendingApiContext;)V

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiFactory;->mVendingApiMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
