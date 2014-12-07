.class Lcom/google/android/finsky/download/DownloadProgressManager$1;
.super Landroid/database/ContentObserver;
.source "DownloadProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadProgressManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$1;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$1;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    # invokes: Lcom/google/android/finsky/download/DownloadProgressManager;->onDownloadProgress()V
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$000(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    return-void
.end method
