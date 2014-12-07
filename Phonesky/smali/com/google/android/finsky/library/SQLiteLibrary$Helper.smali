.class Lcom/google/android/finsky/library/SQLiteLibrary$Helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/SQLiteLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const-string v0, "library.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    const-string v0, "DROP TABLE ownership"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE ownership (account STRING, library_id STRING, backend INTEGER, doc_id STRING, doc_type INTEGER, offer_type INTEGER, document_hash INTEGER, subs_valid_until_time INTEGER, app_certificate_hash STRING, app_refund_pre_delivery_endtime_ms INTEGER, app_refund_post_delivery_window_ms INTEGER, subs_auto_renewing INTEGER, subs_initiation_time INTEGER, subs_trial_until_time INTEGER, inapp_purchase_data STRING, inapp_signature STRING, PRIMARY KEY (account, library_id, backend, doc_id, doc_type, offer_type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    const-string v0, "Downgrading Library from %d to %d"

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

    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "ALTER TABLE ownership ADD COLUMN inapp_purchase_data STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE ownership ADD COLUMN inapp_signature STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
