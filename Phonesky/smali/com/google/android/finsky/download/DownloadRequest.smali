.class public Lcom/google/android/finsky/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "otheruid"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getFileDestinationConstant()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "hint"

    invoke-virtual {p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "notificationpackage"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "notificationclass"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "cookiedata"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p9, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    if-eqz p8, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "allowed_network_types"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "is_public_api"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "allow_roaming"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method toContentValues()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method
