.class public Lcom/google/android/finsky/library/SQLiteLibrary;
.super Ljava/lang/Object;
.source "SQLiteLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/SQLiteLibrary$Helper;
    }
.end annotation


# static fields
.field private static final FULL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mQueryContains:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

.field private mQuerySize:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "library_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "doc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "doc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "offer_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "document_hash"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subs_valid_until_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "app_certificate_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "app_refund_pre_delivery_endtime_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "app_refund_post_delivery_window_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "subs_auto_renewing"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "subs_initiation_time"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "subs_trial_until_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "inapp_purchase_data"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "inapp_signature"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/library/SQLiteLibrary;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getBackendId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getDocType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getOfferType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method static getFullContentValues(Lcom/google/android/finsky/library/LibraryEntry;)Landroid/content/ContentValues;
    .locals 9

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "account"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "library_id"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getLibraryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "backend"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getBackendId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "doc_id"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "doc_type"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getDocType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "offer_type"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getOfferType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "document_hash"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getDocumentHash()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getValidUntilTimestampMs()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    const-string v5, "subs_valid_until_time"

    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryEntry;->getValidUntilTimestampMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    instance-of v5, p0, Lcom/google/android/finsky/library/LibraryAppEntry;

    if-eqz v5, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/android/finsky/library/LibraryAppEntry;

    iget-object v5, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHashes:[Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/finsky/utils/Utils;->commaPackStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "app_certificate_hash"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "app_refund_pre_delivery_endtime_ms"

    iget-wide v6, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "app_refund_post_delivery_window_ms"

    iget-wide v6, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const-string v5, "subs_valid_until_time"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v5, p0, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    if-eqz v5, :cond_3

    move-object v4, p0

    check-cast v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    const-string v5, "subs_auto_renewing"

    iget-boolean v6, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->isAutoRenewing:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "subs_initiation_time"

    iget-wide v6, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->initiationTimestampMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "subs_trial_until_time"

    iget-wide v6, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->trialUntilTimestampMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "inapp_purchase_data"

    iget-object v6, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "inapp_signature"

    iget-object v6, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->signature:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v5, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    if-eqz v5, :cond_4

    move-object v4, p0

    check-cast v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    const-string v5, "subs_auto_renewing"

    iget-boolean v6, v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "subs_initiation_time"

    iget-wide v6, v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->initiationTimestampMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "subs_trial_until_time"

    iget-wide v6, v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_4
    instance-of v5, p0, Lcom/google/android/finsky/library/LibraryInAppEntry;

    if-eqz v5, :cond_0

    move-object v3, p0

    check-cast v3, Lcom/google/android/finsky/library/LibraryInAppEntry;

    const-string v5, "inapp_purchase_data"

    iget-object v6, v3, Lcom/google/android/finsky/library/LibraryInAppEntry;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "inapp_signature"

    iget-object v6, v3, Lcom/google/android/finsky/library/LibraryInAppEntry;->signature:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getVersion()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->getFullContentValues(Lcom/google/android/finsky/library/LibraryEntry;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ownership"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/SQLiteLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v2, p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V

    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getEntry not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ownership"

    sget-object v2, Lcom/google/android/finsky/library/SQLiteLibrary;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;

    invoke-direct {v0, p0, v8}, Lcom/google/android/finsky/library/SQLiteLibrary$1;-><init>(Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reopen()V
    .locals 3

    new-instance v0, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(*) FROM ownership WHERE account=? AND library_id=? AND backend=? AND doc_id=? AND doc_type=? AND offer_type=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM ownership WHERE account=? AND library_id=? AND backend=? AND doc_id=? AND doc_type=? AND offer_type=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM ownership WHERE account=? AND library_id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(*) FROM ownership"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method

.method public declared-synchronized resetAccountLibrary(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetKeepOnlyAccounts(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    if-lez v2, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v4, 0x3f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ownership"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account NOT IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    const-string v4, "Removed %d obsolete library rows."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
