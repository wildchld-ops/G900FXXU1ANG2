.class public Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;
.super Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;
.source "PlayCardViewMyAppsDownloading.java"


# instance fields
.field private mDownloadingBytes:Landroid/widget/TextView;

.field private mDownloadingPercentage:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->mThumbnailAspectRatio:F

    return-void
.end method


# virtual methods
.method public bindProgress(Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->mDownloadingBytes:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->mDownloadingPercentage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->onFinishInflate()V

    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->mDownloadingBytes:Landroid/widget/TextView;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->mDownloadingPercentage:Landroid/widget/TextView;

    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->measureThumbnailSpanningHeight(I)V

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->onMeasure(II)V

    return-void
.end method
