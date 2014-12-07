.class public Lcom/google/android/finsky/utils/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized readFromDisk(Ljava/io/File;)Landroid/os/Parcelable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const-class v7, Lcom/google/android/finsky/utils/ParcelUtils;

    monitor-enter v7

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4}, Lcom/google/android/finsky/utils/ParcelUtils;->readObject(Ljava/io/DataInputStream;)Landroid/os/Parcelable;
    :try_end_1
    .catch Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v3, v4

    :cond_1
    :goto_0
    monitor-exit v7

    return-object v0

    :catch_0
    move-exception v6

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const-string v6, "Version mismatch in %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v5

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const-string v6, "Unable to read %s from cache: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v6

    :goto_5
    monitor-exit v7

    throw v6

    :catch_5
    move-exception v8

    goto :goto_4

    :catchall_2
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_6
    move-exception v5

    move-object v3, v4

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_1

    :catchall_3
    move-exception v6

    move-object v3, v4

    goto :goto_5

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method private static readObject(Ljava/io/DataInputStream;)Landroid/os/Parcelable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/io/DataInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    const-class v5, Lcom/google/android/finsky/utils/ParcelUtils;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    array-length v5, v0

    invoke-virtual {v4, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method private static writeObject(Ljava/io/DataOutputStream;Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public static declared-synchronized writeToDisk(Ljava/io/File;Landroid/os/Parcelable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v3, Lcom/google/android/finsky/utils/ParcelUtils;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ParcelUtils;->writeObject(Ljava/io/DataOutputStream;Landroid/os/Parcelable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method
