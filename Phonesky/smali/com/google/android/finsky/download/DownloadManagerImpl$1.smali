.class Lcom/google/android/finsky/download/DownloadManagerImpl$1;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadManagerImpl;->enqueue(Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

.field final synthetic val$request:Lcom/google/android/finsky/download/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadManagerImpl;Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$request:Lcom/google/android/finsky/download/DownloadRequest;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "google_sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    # getter for: Lcom/google/android/finsky/download/DownloadManagerImpl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/google/android/finsky/download/DownloadManagerImpl;->access$000(Lcom/google/android/finsky/download/DownloadManagerImpl;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$request:Lcom/google/android/finsky/download/DownloadRequest;

    invoke-virtual {v4}, Lcom/google/android/finsky/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadManagerConstants;->sniffDownloadManagerVersion(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/utils/ParameterizedRunnable;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to insert download request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
