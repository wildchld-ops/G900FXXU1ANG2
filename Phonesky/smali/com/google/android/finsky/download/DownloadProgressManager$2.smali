.class Lcom/google/android/finsky/download/DownloadProgressManager$2;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager$2;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager$2;->this$0:Lcom/google/android/finsky/download/DownloadProgressManager;

    # invokes: Lcom/google/android/finsky/download/DownloadProgressManager;->onDownloadProgress()V
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadProgressManager;->access$000(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    return-void
.end method
