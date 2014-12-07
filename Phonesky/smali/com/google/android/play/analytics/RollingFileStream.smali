.class public Lcom/google/android/play/analytics/RollingFileStream;
.super Ljava/lang/Object;
.source "RollingFileStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mCurrentOutputFile:Ljava/io/File;

.field private final mDirectory:Ljava/io/File;

.field private final mFileNamePrefix:Ljava/lang/String;

.field private final mFileNameSuffix:Ljava/lang/String;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private final mMaxStorageSize:J

.field private final mReadFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecommendedFileSize:J

.field private final mWrittenFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;)V
    .locals 6
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p4, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "recommendedFileSize must be positive"

    invoke-static {v0, v3}, Lcom/google/android/play/utils/Assertions;->checkArgument(ZLjava/lang/String;)V

    cmp-long v0, p6, v4

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "maxStorageSize must be positive"

    invoke-static {v0, v3}, Lcom/google/android/play/utils/Assertions;->checkArgument(ZLjava/lang/String;)V

    if-eqz p8, :cond_3

    :goto_2
    const-string v0, "callbacks cannot be null"

    invoke-static {v1, v0}, Lcom/google/android/play/utils/Assertions;->checkArgument(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNamePrefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNameSuffix:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/play/analytics/RollingFileStream;->mRecommendedFileSize:J

    iput-wide p6, p0, Lcom/google/android/play/analytics/RollingFileStream;->mMaxStorageSize:J

    iput-object p8, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCallbacks:Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;

    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->createNewOutputFile()V

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "RollingFileStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create a temp file with prefix: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" and suffix: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNameSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" in dir: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->loadWrittenFiles()V

    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->ensureMaxStorageSizeLimit()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private createNewOutputFile()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iput-object v4, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNamePrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNameSuffix:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCallbacks:Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;

    invoke-interface {v1}, Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;->onNewOutputFile()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    iput-object v4, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private ensureMaxStorageSizeLimit()V
    .locals 9

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    iget-wide v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mMaxStorageSize:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    goto :goto_2

    :cond_6
    if-lez v2, :cond_7

    const-string v5, "RollingFileStream"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " files were purged due to exceeding total storage size of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/play/analytics/RollingFileStream;->mMaxStorageSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private loadWrittenFiles()V
    .locals 9

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a directory for path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/play/utils/Assertions;->checkState(ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-virtual {v2, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    sget-object v6, Lcom/google/android/play/utils/FileModifiedDateComparator;->INSTANCE:Lcom/google/android/play/utils/FileModifiedDateComparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private shouldStartNewOutputFile()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mRecommendedFileSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toByteArray(Ljava/io/File;)[B
    .locals 9
    .param p1    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/OutOfMemoryError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too large to fit in a byte array: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    new-array v1, v6, [B

    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    long-to-int v6, v3

    :try_start_0
    new-array v1, v6, [B

    const/4 v5, 0x0

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_3

    array-length v6, v1

    sub-int/2addr v6, v5

    invoke-virtual {v2, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected EOS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v6

    :cond_2
    add-int/2addr v5, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0
.end method


# virtual methods
.method public deleteAllReadFiles()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public hasUnreadFiles()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markAllFilesAsUnread()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/play/utils/FileModifiedDateComparator;->INSTANCE:Lcom/google/android/play/utils/FileModifiedDateComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public peekNextReadLength()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public read()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RollingFileStream"

    const-string v3, "This method should never be called when there are no written files."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/google/android/play/analytics/RollingFileStream;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mReadFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public totalUnreadFileLength()J
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public write(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->createNewOutputFile()V

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCallbacks:Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-interface {v1, p1, v2}, Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;->onWrite(Ljava/lang/Object;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->shouldStartNewOutputFile()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mWrittenFiles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mCurrentOutputFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->createNewOutputFile()V

    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->ensureMaxStorageSizeLimit()V

    const/4 v0, 0x1

    goto :goto_0
.end method
