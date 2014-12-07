.class Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteInstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Helper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;Landroid/content/Context;)V
    .locals 3
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->this$0:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;

    const-string v0, "localappstate.db"

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    const-string v0, "DROP TABLE appstate"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE appstate (package_name STRING, auto_update INTEGER, desired_version INTEGER, download_uri STRING, delivery_data BLOB, delivery_data_timestamp_ms INTEGER,installer_state INTEGER, first_download_ms INTEGER, referrer STRING, account STRING, title STRING,flags INTEGER, continue_url STRING, last_notified_version INTEGER, last_update_timestamp_ms INTEGER, account_for_update STRING, auto_acquire_tags STRING, PRIMARY KEY (package_name))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    const-string v0, "Downgrading InstallerDataStore from %d to %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "ALTER TABLE appstate ADD COLUMN continue_url STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_1
    const-string v0, "ALTER TABLE appstate ADD COLUMN delivery_data_timestamp_ms INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_2
    const-string v0, "ALTER TABLE appstate ADD COLUMN last_notified_version INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_3
    const-string v0, "ALTER TABLE appstate ADD COLUMN last_update_timestamp_ms INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_4
    const-string v0, "ALTER TABLE appstate ADD COLUMN account_for_update STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_5
    const-string v0, "ALTER TABLE appstate ADD COLUMN auto_acquire_tags STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
