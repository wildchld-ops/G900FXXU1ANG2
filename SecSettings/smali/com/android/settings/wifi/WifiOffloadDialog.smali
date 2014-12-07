.class public Lcom/android/settings/wifi/WifiOffloadDialog;
.super Landroid/app/Activity;
.source "WifiOffloadDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private orientation:I

.field private packageName:Ljava/lang/String;

.field public searching_progress:Landroid/widget/ProgressBar;

.field public searching_text:Landroid/widget/TextView;

.field taskID:I

.field private userPress:I

.field wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiOffloadDialog;I)I
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WifiOffloadDialog;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    return p1
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 6

    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v4, 0x7f0b0641

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/wifi/WifiOffloadDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiOffloadDialog$1;-><init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b0642

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    new-instance v4, Lcom/android/settings/wifi/WifiOffloadDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiOffloadDialog$2;-><init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v4, "wifioffload"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiOffloadManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b063d

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    new-instance v4, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v4}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const v4, 0x7f0b0640

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->searching_text:Landroid/widget/TextView;

    const v4, 0x7f0b063f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->searching_progress:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->dismissVzwDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadDialog"

    const-string v1, "Offload onBackKeyPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const v0, 0x7f04025a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->initialize()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->orientation:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x1

    iput-object p0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "WifiOffloadDialog"

    const-string v3, "Offload, Dialog comes....!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f04025a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->initialize()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    iget v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "WifiOffloadDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    const-string v2, "WifiOffloadDialog"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v4, v0, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    :cond_2
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_3
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    const-string v0, "WifiOffloadDialog"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    :cond_0
    return-void
.end method
