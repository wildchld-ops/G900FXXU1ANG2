.class public Lcom/google/android/finsky/download/DownloadImpl;
.super Ljava/lang/Object;
.source "DownloadImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/InternalDownload;


# static fields
.field private static final COMPLETED_STATES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/finsky/download/Download$DownloadState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActualSize:J

.field private mContentUri:Landroid/net/Uri;

.field private final mCookieName:Ljava/lang/String;

.field private final mCookieValue:Ljava/lang/String;

.field private final mFileUri:Landroid/net/Uri;

.field private mHttpStatus:I

.field private final mInvisible:Z

.field private mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

.field private mMaximumSize:J

.field private final mObb:Lcom/google/android/finsky/download/obb/Obb;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageVersion:I

.field mState:Lcom/google/android/finsky/download/Download$DownloadState;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mWifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/download/DownloadImpl;->COMPLETED_STATES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageVersion:I

    iput-object p5, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieValue:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/finsky/download/DownloadImpl;->mFileUri:Landroid/net/Uri;

    iput-wide p8, p0, Lcom/google/android/finsky/download/DownloadImpl;->mActualSize:J

    iput-wide p10, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMaximumSize:J

    iput-object p12, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    iput-boolean p13, p0, Lcom/google/android/finsky/download/DownloadImpl;->mWifiOnly:Z

    iput-boolean p14, p0, Lcom/google/android/finsky/download/DownloadImpl;->mInvisible:Z

    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/DownloadImpl;->setState(Lcom/google/android/finsky/download/Download$DownloadState;)V

    return-void
.end method


# virtual methods
.method public createDownloadRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRequest;
    .locals 10

    new-instance v0, Lcom/google/android/finsky/download/DownloadRequest;

    invoke-virtual {p0}, Lcom/google/android/finsky/download/DownloadImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieValue:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/download/DownloadImpl;->mFileUri:Landroid/net/Uri;

    iget-boolean v8, p0, Lcom/google/android/finsky/download/DownloadImpl;->mWifiOnly:Z

    iget-boolean v9, p0, Lcom/google/android/finsky/download/DownloadImpl;->mInvisible:Z

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/download/DownloadRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lcom/google/android/finsky/download/DownloadImpl;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/DownloadImpl;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHttpStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mHttpStatus:I

    return v0
.end method

.method public getMaximumSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMaximumSize:J

    return-wide v0
.end method

.method public getObb()Lcom/google/android/finsky/download/obb/Obb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Lcom/google/android/finsky/download/DownloadProgress;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

    return-object v0
.end method

.method public getRequestedDestination()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()Lcom/google/android/finsky/download/Download$DownloadState;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    sget-object v0, Lcom/google/android/finsky/download/DownloadImpl;->COMPLETED_STATES:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isObb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mContentUri:Landroid/net/Uri;

    return-void
.end method

.method public setHttpStatus(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mHttpStatus:I

    return-void
.end method

.method public setProgress(Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

    iget-wide v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mActualSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    iput-wide v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mActualSize:J

    :cond_0
    return-void
.end method

.method public setState(Lcom/google/android/finsky/download/Download$DownloadState;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/download/DownloadImpl;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received state update when already completed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    if-ne v0, p1, :cond_1

    const-string v0, "Duplicate state set for \'%s\' (%s). Already in that state"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    return-void

    :cond_1
    const-string v0, "%s from %s to %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageName:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "untitled-download"

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obb-for-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "self-update-download"

    goto :goto_0
.end method
