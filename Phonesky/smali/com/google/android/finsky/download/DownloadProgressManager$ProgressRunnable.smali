.class Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressRunnable"
.end annotation


# instance fields
.field private mDownloadProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field

.field private mNewUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOldUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadProgressManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/download/DownloadProgressManager;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mOldUris:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mNewUris:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mDownloadProgressMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    # getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;
    invoke-static {v4}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mOldUris:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    # getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;
    invoke-static {v4}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->cancel(Lcom/google/android/finsky/download/Download;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mNewUris:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getHttpStatus()I

    move-result v4

    const/16 v5, 0xc6

    if-ne v4, v5, :cond_3

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    # getter for: Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;
    invoke-static {v4}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;->mDownloadProgressMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/download/DownloadProgress;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyProgress(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/DownloadProgress;)V

    goto :goto_1

    :cond_4
    return-void
.end method
