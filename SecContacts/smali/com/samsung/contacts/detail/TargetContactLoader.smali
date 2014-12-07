.class public Lcom/samsung/contacts/detail/TargetContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "TargetContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/samsung/contacts/detail/TargetContactData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TARGET_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "link_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/detail/TargetContactLoader;->TARGET_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/contacts/detail/TargetContactLoader;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private loadContactHeaderData(Lcom/samsung/contacts/detail/TargetContactData;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Lcom/samsung/contacts/detail/TargetContactData;
    .param p2    # Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayNameAlter:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/TargetContactData;->mPhoneticName:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/samsung/contacts/detail/TargetContactData;->mJoinedCount:I

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoId:J

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoUri:Ljava/lang/String;

    return-void
.end method

.method private loadPhotoBinaryData(Lcom/samsung/contacts/detail/TargetContactData;)V
    .locals 9
    .param p1    # Lcom/samsung/contacts/detail/TargetContactData;

    iget-object v6, p1, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const/16 v6, 0x4000

    new-array v1, v6, [B

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p1, Lcom/samsung/contacts/detail/TargetContactData;->mPhoto:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Lcom/samsung/contacts/detail/TargetContactData;
    .locals 13

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/detail/TargetContactLoader;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/contacts/detail/TargetContactLoader;->TARGET_PROJECTION:[Ljava/lang/String;

    const-string v5, "raw_contact_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-wide/16 v6, -0x1

    if-eqz v8, :cond_5

    :try_start_0
    new-instance v9, Lcom/samsung/contacts/detail/TargetContactData;

    invoke-direct {v9}, Lcom/samsung/contacts/detail/TargetContactData;-><init>()V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v9, v8}, Lcom/samsung/contacts/detail/TargetContactLoader;->loadContactHeaderData(Lcom/samsung/contacts/detail/TargetContactData;Landroid/database/Cursor;)V

    :cond_0
    const/16 v0, 0xd

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    cmp-long v0, v11, v6

    if-eqz v0, :cond_1

    move-wide v6, v11

    iget-object v0, v9, Lcom/samsung/contacts/detail/TargetContactData;->mAccountTypes:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/contacts/detail/TargetContactData;->mDataSets:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/contacts/detail/TargetContactData;->mCompany:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/contacts/detail/TargetContactData;->mJobTitle:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/contacts/detail/TargetContactData;->mDepartment:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0, v9}, Lcom/samsung/contacts/detail/TargetContactLoader;->loadPhotoBinaryData(Lcom/samsung/contacts/detail/TargetContactData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v9

    :cond_4
    :try_start_1
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/contacts/detail/TargetContactData;->mPhoto:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    move-object v9, v3

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/TargetContactLoader;->loadInBackground()Lcom/samsung/contacts/detail/TargetContactData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/TargetContactLoader;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    return-void
.end method
