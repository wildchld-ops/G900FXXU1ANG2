.class Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/MySettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private CTC_EXTRA:[I

.field private DEFAULT_QUICK_SETTINGS:[I

.field private OPEN_EXTRA:[I

.field mContext:Landroid/content/Context;

.field private saved_cnt:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mysettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->OPEN_EXTRA:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->CTC_EXTRA:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->saved_cnt:I

    iput-object p1, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        0x7f0b069e
        0x7f0b06a5
        0x7f0b06a0
        0x7f0b06a6
        0x7f0b06bc
        0x7f0b06b9
        0x7f0b06d9
        0x7f0b06b8
        0x7f0b06db
        0x7f0b06cd
        0x7f0b06e5
        0x7f0b0716
    .end array-data

    :array_1
    .array-data 4
        0x7f0b06a2
        0x7f0b070a
        0x7f0b06cc
    .end array-data

    :array_2
    .array-data 4
        0x7f0b06fd
        0x7f0b06ab
        0x7f0b06a2
        0x7f0b070a
        0x7f0b06cc
    .end array-data
.end method

.method private checkSaveItem(I)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shopdemo"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v3

    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_2
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "BRI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_BlockEnableSmartBonding"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTFGBlockEnableSmartBonding()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_4
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    :sswitch_5
    if-ne v2, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_6
    const-string v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_7
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v2, v0, :cond_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_8
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b069e -> :sswitch_1
        0x7f0b06a0 -> :sswitch_3
        0x7f0b06a2 -> :sswitch_8
        0x7f0b06a5 -> :sswitch_2
        0x7f0b06a6 -> :sswitch_4
        0x7f0b06b8 -> :sswitch_5
        0x7f0b06cd -> :sswitch_7
        0x7f0b06db -> :sswitch_6
        0x7f0b06e5 -> :sswitch_0
    .end sparse-switch
.end method

.method private initDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const-string v7, "MySettingsProvider"

    const-string v8, "initDB"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string v7, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->CTC_EXTRA:[I

    :goto_0
    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v7, v7

    array-length v8, v0

    add-int v5, v7, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    const/16 v7, 0xc

    if-ge v1, v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v7, v7

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    aget v4, v7, v3

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->checkSaveItem(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "key"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "favorite"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->OPEN_EXTRA:[I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v7, v7

    sub-int v7, v3, v7

    aget v4, v0, v7

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "CREATE TABLE favorite (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE frequent (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL , count INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->initDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destory all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS favorite"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS frequent"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
