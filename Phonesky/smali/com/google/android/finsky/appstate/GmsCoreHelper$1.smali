.class final Lcom/google/android/finsky/appstate/GmsCoreHelper$1;
.super Ljava/lang/Object;
.source "GmsCoreHelper.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/GmsCoreHelper;->getListener(Lcom/google/android/finsky/analytics/FinskyEventLog;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadQueueListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/analytics/FinskyEventLog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$eventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/download/Download;

    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/download/Download;

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$300()Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$eventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$packageName:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$400()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v0, "NLP fixer download completed"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/appstate/GmsCoreHelper;->installNlpCleanup(Lcom/google/android/finsky/download/Download;Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$500(Lcom/google/android/finsky/download/Download;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/download/Download;
    .param p2    # I

    const/4 v3, 0x0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$300()Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$eventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x68

    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$packageName:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$400()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    move v4, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v0, "NLP fixer download failed with HTTP status: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/download/Download;

    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/download/Download;
    .param p2    # Lcom/google/android/finsky/download/DownloadProgress;

    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/download/Download;

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpDownload:Lcom/google/android/finsky/download/InternalDownload;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$300()Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$eventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$1;->val$packageName:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$400()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v0, "NLP fixer download started"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
