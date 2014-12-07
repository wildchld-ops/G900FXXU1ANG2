.class public Lcom/android/settings/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static final WIFI_ERRORCODE:Z

.field private static final WIFI_SCREENCONNECTEDINFO:Z

.field private static mDialogFlag:Z

.field private static mEnableShowApEventFlag:Z

.field private static mIsConnectivityNotiShowing:Z

.field public static mIsForegroundWifiSettings:Z

.field public static mIsForegroundWifiSubSettings:Z

.field private static mIsWifiSCCDiffNotiShowing:Z

.field private static mLastInfo:Landroid/net/NetworkInfo;

.field private static mNotification:Landroid/app/Notification;

.field private static mShowOnceFlag:Z

.field private static mWifiAnsExceptionWarning:Landroid/app/Notification;

.field private static mWifiDisabledWarning:Landroid/app/Notification;

.field private static mWifiPoorConnectionWarning:Landroid/app/Notification;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEapMethod:Ljava/lang/String;

.field private mHiddenAps:Z

.field private mPrioritymode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->WIFI_ERRORCODE:Z

    sput-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    sput-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    sput-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    sput-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->WIFI_SCREENCONNECTEDINFO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapMethod:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ExceptScanlist"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mHiddenAps:Z

    return-void
.end method

.method private enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableShowApEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enable"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 3

    const-string v0, "/efs/FactoryApp/factorymode"

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/factorymode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v0, "OFF"

    const-string v1, "WifiStatusReceiver"

    const-string v2, "cannot open file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)I
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WifiSubSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchHS20Browser(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;

    const-string v4, "WifiStatusReceiver"

    const-string v5, "launch Brower with operator URL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WifiStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launch Brower with operator URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/net/WebAddress;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private readSdcard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "WifiStatusReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download filename :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    move-object v3, v4

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_5
    throw v6

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private showConnectedNotification(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    const v5, 0x2df96b

    const/4 v4, 0x0

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show AT&T wifi notification visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz p2, :cond_1

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const v2, 0x10808d0

    iput v2, v1, Landroid/app/Notification;->icon:I

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_0
    const v1, 0x7f090429

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09042a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    sget-object v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v1, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;
    .param p3    # I

    sget-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWifiPickerActivity with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p3, :cond_1

    sput p3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    :cond_1
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t start picker activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    const-string v1, "Call AP LIST dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/wifi/WifiPickerDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "found_ssid_list"

    const-string v2, "found_ssid_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    const-string v1, "updateResources "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogPoorConnectionNotification(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private watchdogAnsExceptionNotification(Landroid/content/Context;Z)V
    .locals 7

    const v6, 0x7f0904ec

    const/4 v5, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Fail to get SystemService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    if-nez v2, :cond_2

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    sput-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    const v3, 0x108086d

    iput v3, v2, Landroid/app/Notification;->icon:I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, v5, v2, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "nid"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_2
    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    sget-object v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v2, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    const v1, 0x7f0904ec

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v1, 0x7f0904ec

    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiAnsExceptionWarning:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "WifiStatusReceiver"

    const-string v1, "Runtime Exeption on watchdogAnsExceptionNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    sput v5, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    goto/16 :goto_0
.end method

.method private watchdogNotification(Landroid/content/Context;Z)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x7f0904db

    const/4 v4, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_1

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const v2, 0x108008a

    iput v2, v1, Landroid/app/Notification;->icon:I

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "launch_with"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sput v6, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "nid"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0904dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v3, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    sget-object v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v2, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    sput v4, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    goto :goto_0
.end method

.method private watchdogPoorConnectionNotification(Landroid/content/Context;Z)V
    .locals 11

    const v10, 0x7f0904dd

    const/4 v1, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "WifiStatusReceiver"

    const-string v1, "Fail to get Running Task info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiPoorConnection"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0904de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108086d

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v9, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "nid"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    iput-object v7, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_2
    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    const v0, 0x7f0904dd

    :try_start_0
    invoke-virtual {v6, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const v0, 0x7f0904dd

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiPoorConnectionWarning:Landroid/app/Notification;

    invoke-virtual {v6, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "WifiStatusReceiver"

    const-string v1, "Runtime Exeption on watchdogPoorConnectionNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-virtual {v6, v10}, Landroid/app/NotificationManager;->cancel(I)V

    sput v1, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 41
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_0

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "action: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapMethod:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "AKA"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_4

    const-string v35, "android.net.wifi.SHOW_EAP_MESSAGE"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    const-string v35, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onReceive, message of received: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v19, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v35, ""

    const-string v36, "KTT"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v35

    if-eqz v35, :cond_1

    :cond_3
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    :cond_4
    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->WIFI_ERRORCODE:Z

    if-eqz v35, :cond_6

    const-string v35, "android.net.wifi.SHOW_EAP_MESSAGE"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    const-string v35, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_1

    const-string v35, "General failure"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0903f1

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    :cond_5
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    :cond_6
    const-string v35, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    const-string v35, "wifi_state"

    const/16 v36, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_7

    const-string v35, "WifiStatusReceiver"

    const-string v36, "WIFI_STATE_ENABLED"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v35, :cond_a

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-nez v35, :cond_8

    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mHiddenAps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->updateHiddenAccessPoint()V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_9

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_2

    :cond_a
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_1

    :cond_b
    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_c

    const-string v35, "WifiStatusReceiver"

    const-string v36, "WIFI_STATE_DISABLED"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    :cond_d
    :goto_3
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    const-string v36, "android.net.wifi.WIFI_HS20_CRED_DOWNLOADED"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    :try_start_0
    const-string v35, "file_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v35, "cred"

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->readSdcard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const-string v35, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->modifyPasspointCred(Ljava/lang/String;)I

    move-result v25

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Load Cred status"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    const-string v35, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_f

    const-string v35, "WifiStatusReceiver"

    const-string v36, "ACTION CAME : android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v35, "show_dialog_once"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_11

    const-string v35, "show_dialog_once"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_10

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Want to show AP LIST:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    sput-boolean v13, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-nez v13, :cond_d

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    goto/16 :goto_3

    :cond_11
    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    if-eqz v35, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v35

    if-nez v35, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_13

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_12
    :goto_4
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_3

    :cond_13
    const-string v35, "WifiStatusReceiver"

    const-string v36, "Ignore wifi picker dialog : Talkback mode is on"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_14
    const-string v35, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    const-string v35, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    check-cast v35, Landroid/net/NetworkInfo;

    sput-object v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    sget-object v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v35, :cond_1c

    sget-object v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_1c

    const-string v35, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/net/wifi/WifiInfo;

    if-eqz v33, :cond_18

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_15

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "getConnectionInfo.SSID : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "wifiInfo : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_1a

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_16

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_17

    :cond_16
    new-instance v35, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const v37, 0x103012b

    invoke-direct/range {v35 .. v37}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0d0010

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "#ff"

    const-string v37, "#"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v35, "#DEAD00"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f090ab7

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    :goto_5
    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->WIFI_SCREENCONNECTEDINFO:Z

    if-eqz v35, :cond_1b

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_1

    sget-object v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v35

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->showConnectedNotification(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const-string v35, "WifiStatusReceiver"

    const-string v36, "wifiinfo is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f090ab7

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "<font color="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ">"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "</font>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v36

    const/16 v37, 0x1

    invoke-static/range {v35 .. v37}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v35

    const v36, 0x102000b

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    const/16 v35, 0x11

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v9

    const-string v35, "WifiStatusReceiver"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1a
    const-string v35, "WifiStatusReceiver"

    const-string v36, "Ignore wifi connected toast. Because wifi is not enabled"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1b
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_3

    :cond_1c
    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->WIFI_SCREENCONNECTEDINFO:Z

    if-eqz v35, :cond_d

    sget-object v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v35, :cond_d

    sget-object v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v35

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->showConnectedNotification(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_1d
    const-string v35, "android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_21

    const-string v35, "info_type"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_1
    const v35, 0x7f0904d3

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :pswitch_2
    const v35, 0x7f09058f

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :pswitch_3
    const v35, 0x7f090590

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :pswitch_4
    const-string v35, "visible"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_1e

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-nez v35, :cond_1e

    const-string v35, "WifiStatusReceiver"

    const-string v36, "Ignore watchdog notification. Because wifi is not enabled"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :pswitch_5
    const-string v35, "visible"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_1f

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-nez v35, :cond_1f

    const-string v35, "WifiStatusReceiver"

    const-string v36, "Ignore INFO_TYPE_WATCHDOG_POOR_CONNECTION_ALERT_NOTIFICATION. Because wifi is not enabled"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogPoorConnectionNotification(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :pswitch_6
    const-string v35, "visible"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_20

    const/16 v35, 0x5

    sput v35, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogAnsExceptionNotification(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_20
    const/16 v35, 0x0

    sput v35, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    goto :goto_6

    :pswitch_7
    const v35, 0x7f0904d5

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :pswitch_8
    const v35, 0x7f090361

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :pswitch_9
    const v35, 0x7f090591

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_21
    const-string v35, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mHiddenAps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    const-string v35, "wifiConfiguration"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiConfiguration;

    if-eqz v22, :cond_22

    const-string v35, "changeReason"

    const/16 v36, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onReceive, SSID:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", status:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",  reason:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_d

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v9

    const-string v35, "WifiStatusReceiver"

    const-string v36, "removeDoubleQuotes - NullPointerException"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_22
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_23
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_23

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_23

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_7

    :cond_24
    const-string v35, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_26

    const-string v35, "WifiStatusReceiver"

    const-string v36, "ACTION_SEC_PICK_WIFI_NETWORK"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "type"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_25

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_25
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_3

    :cond_26
    const-string v35, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2c

    const-string v35, "WifiStatusReceiver"

    const-string v36, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-nez v35, :cond_2a

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v32

    const/16 v35, 0xc

    move/from16 v0, v32

    move/from16 v1, v35

    if-eq v0, v1, :cond_27

    const/16 v35, 0xd

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_28

    :cond_27
    const/4 v15, 0x1

    :goto_8
    if-eqz v15, :cond_2b

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v35

    if-nez v35, :cond_29

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_28
    const/4 v15, 0x0

    goto :goto_8

    :cond_29
    new-instance v35, Landroid/content/Intent;

    const-string v36, "com.android.settings.wifi.WIFI_ON"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2a
    :goto_9
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_3

    :cond_2b
    const/16 v35, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_9

    :cond_2c
    const-string v35, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2d

    const-string v35, "WifiStatusReceiver"

    const-string v36, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "launch_with"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_3

    :cond_2d
    const-string v35, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_31

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-eqz v35, :cond_2e

    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->isFactoryMode()Z

    move-result v35

    if-eqz v35, :cond_2e

    const-string v35, "WifiStatusReceiver"

    const-string v36, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f090560

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    :cond_2e
    const-string v35, "wifitimer_pref"

    const/16 v36, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    const-string v35, "wifitimer_start_time_checked"

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    if-nez v35, :cond_2f

    const-string v35, "wifitimer_end_time_checked"

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    if-eqz v35, :cond_30

    :cond_2f
    new-instance v26, Landroid/content/Intent;

    const-string v35, "com.android.settings.wifi.WifiTimerService"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v36, 0x138b

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_connection_monitor_enable"

    const/16 v37, 0x1

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v35, 0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    new-instance v35, Landroid/content/Intent;

    const-class v36, Lcom/android/settings/wifi/WifiConnectionMonitorService;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    :cond_31
    const-string v35, "com.android.settings.wifi.wifitimer_alarm"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_33

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_32

    const-string v35, "WifiStatusReceiver"

    const-string v36, "WifiTimer Broadcast Received"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    new-instance v26, Landroid/content/Intent;

    const-string v35, "com.android.settings.wifi.WifiTimerService"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    :cond_33
    const-string v35, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_37

    const-string v35, "nid"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    sget-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v35, :cond_34

    const-string v35, "WifiStatusReceiver"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, ">> ACTION_SEC_NOTIFICATION_CANCEL nid:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const v35, 0x7f0904db

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_35

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    goto/16 :goto_3

    :cond_35
    const v35, 0x7f0904d8

    move/from16 v0, v23

    move/from16 v1, v35

    if-ne v0, v1, :cond_36

    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsWifiSCCDiffNotiShowing:Z

    goto/16 :goto_3

    :cond_36
    if-nez v23, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    goto/16 :goto_3

    :cond_37
    const-string v35, "ACTION_AGGREGATION_DELAY"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_38

    :cond_38
    const-string v35, "ACTION_AGGREGATION_DISCONNECT"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_39

    :cond_39
    const-string v35, "android.net.wifi.SEC_LAUNCH_OPERTOR_URL"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3a

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->launchHS20Browser(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_3a
    const-string v35, "android.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3b

    :cond_3b
    const-string v35, "android.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
