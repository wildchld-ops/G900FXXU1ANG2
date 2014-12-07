.class public Lcom/android/mms/smishing/PackageInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstallReceiver.java"


# static fields
.field private static final PERMISSON_RECEIVE_SMS:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final PERMISSON_SEND_SMS:Ljava/lang/String; = "android.permission.SEND_SMS"

.field private static final TAG:Ljava/lang/String; = "Mms/PackageInstallReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private loadAuthorityPref(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_manage_access_authority"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "Mms/PackageInstallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAuthorityPref(): bEnableAuthority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/mms/smishing/PackageInstallReceiver;->loadAuthorityPref(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    const-string v6, ""

    new-instance v0, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/smishing/PackageAuthorityDialog;

    invoke-direct {v0, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    const/high16 v12, 0x40000000

    invoke-static {p1, v11, v0, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    const-string v11, "android.permission.RECEIVE_SMS"

    invoke-virtual {v5, v11, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v11, "android.permission.SEND_SMS"

    invoke-virtual {v5, v11, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v8, :cond_2

    if-nez v9, :cond_0

    :cond_2
    invoke-static {p1}, Lcom/android/mms/smishing/PackageAuthorityUtils;->getSmsPackageList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_3
    const-string v11, "persist.sys.storage_preload"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "device_provisioned"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_0

    const-string v11, "2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    if-ne v4, v11, :cond_0

    :try_start_0
    invoke-virtual {v7}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
