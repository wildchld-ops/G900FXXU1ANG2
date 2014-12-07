.class public Lcom/google/android/finsky/appstate/MigrationAsyncTask;
.super Landroid/os/AsyncTask;
.source "MigrationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final FINSKY_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

.field private final FINSKY_COLUMN_AUTO_UPDATE:Ljava/lang/String;

.field private final FINSKY_COLUMN_PACKAGE_NAME:Ljava/lang/String;

.field private final FINSKY_DATABASE_NAME:Ljava/lang/String;

.field private final FINSKY_TABLE_NAME:Ljava/lang/String;

.field private final GRANOLA_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

.field private final GRANOLA_COLUMN_AUTO_UPDATE:Ljava/lang/String;

.field private final GRANOLA_COLUMN_PACKAGE_NAME:Ljava/lang/String;

.field private final GRANOLA_DATABASE_NAME:Ljava/lang/String;

.field private final GRANOLA_TABLE_NAME:Ljava/lang/String;

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "assets14.db"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_DATABASE_NAME:Ljava/lang/String;

    const-string v0, "assets10"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_TABLE_NAME:Ljava/lang/String;

    const-string v0, "package_name"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_COLUMN_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "auto_update"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_COLUMN_AUTO_UPDATE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    const-string v0, "market_assets.db"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_DATABASE_NAME:Ljava/lang/String;

    const-string v0, "assets"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_TABLE_NAME:Ljava/lang/String;

    const-string v0, "PACKAGE"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_COLUMN_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "AUTO_UPDATE"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_COLUMN_AUTO_UPDATE:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-void
.end method

.method private collectLegacyData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v3, "Reading from legacy database %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v4, v3

    const/4 v3, 0x1

    aput-object p5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eqz v14, :cond_6

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v13, 0x0

    if-eqz p6, :cond_4

    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v3, "DISABLED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    :cond_2
    :goto_2
    packed-switch v13, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v3, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    :catch_0
    move-exception v16

    const-string v3, "Unable to open %s because %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v3, "ENABLED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v13, 0x2

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_2

    :pswitch_1
    sget-object v3, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "assets14.db"

    const-string v3, "assets10"

    const-string v4, "package_name"

    const-string v5, "auto_update"

    iget-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->collectLegacyData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "market_assets.db"

    const-string v3, "assets"

    const-string v4, "PACKAGE"

    const-string v5, "AUTO_UPDATE"

    iget-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->collectLegacyData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v4, v5, :cond_0

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v4, "Migrating %s autoupdate = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    const-string v5, "assets14.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    const-string v5, "market_assets.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-static {v4}, Lcom/google/android/finsky/appstate/UpdateChecker;->migrateAutoUpdateSettings(Lcom/google/android/finsky/appstate/AppStates;)V

    return-void
.end method
