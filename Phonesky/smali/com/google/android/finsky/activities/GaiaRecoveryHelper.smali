.class public Lcom/google/android/finsky/activities/GaiaRecoveryHelper;
.super Ljava/lang/Object;
.source "GaiaRecoveryHelper.java"


# static fields
.field private static sCurrentAccountName:Ljava/lang/String;

.field private static sGaiaAuthIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    sput-object v0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    sput-object p0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private static getRecoveryIntentIfExists()Landroid/app/PendingIntent;
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static launchGaiaRecoveryDialog(Landroid/content/res/Resources;Landroid/support/v4/app/FragmentManager;ILjava/lang/String;)V
    .locals 9

    const v5, 0x7f09017d

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->shouldShowGaiaRecoveryDialog()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f09011e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x133

    const/16 v3, 0xf7

    const/16 v4, 0xf8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v7

    invoke-virtual {v7, p1, p3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPositiveGaiaRecoveryDialogResponse()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->getRecoveryIntentIfExists()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Called Gaia recovery flow but PendingIntent didn\'t exist."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v4, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PendingIntent for GAIA auth was canceled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v4, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :catchall_0
    move-exception v2

    sput-object v4, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    throw v2
.end method

.method public static prefetchAndCacheGaiaAuthRecoveryIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/finsky/config/G;->enableGaiaRecovery:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Skipping fetching recovery intent -- gaia recovery disabled"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v1, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;

    sput-object v1, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;

    :cond_2
    sput-object p1, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "Skipping fetching recovery intent -- no user set."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/finsky/activities/GaiaRecoveryHelper$1;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static shouldShowGaiaRecoveryDialog()Z
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->getRecoveryIntentIfExists()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
