.class public Lcom/google/android/finsky/utils/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;,
        Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    }
.end annotation


# direct methods
.method static synthetic access$100(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/PackageManagerHelper;->verifySize(Landroid/content/Context;Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->isAlreadyInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16

    new-instance v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v12

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v12, v13}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    iget-boolean v12, v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget v7, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v7, :cond_1

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v12, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v6, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v4}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v12, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v6, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v12, "duplicate"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v12, "Unable to load resources: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v12, "addAppShortcut failed"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3, v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getInstallFailMessageId(I)I
    .locals 4

    const v3, 0x7f090104

    const v0, 0x7f0900f7

    const v2, 0x7f090103

    const v1, 0x7f0900f8

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0900f9

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0900fa

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0900fb

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0900fc

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0900fd

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0900fe

    goto :goto_0

    :sswitch_8
    move v0, v1

    goto :goto_0

    :sswitch_9
    const v0, 0x7f0900ff

    goto :goto_0

    :sswitch_a
    const v0, 0x7f090100

    goto :goto_0

    :sswitch_b
    const v0, 0x7f090101

    goto :goto_0

    :sswitch_c
    const v0, 0x7f090102

    goto :goto_0

    :sswitch_d
    move v0, v1

    goto :goto_0

    :sswitch_e
    move v0, v2

    goto :goto_0

    :sswitch_f
    move v0, v3

    goto :goto_0

    :sswitch_10
    const v0, 0x7f090105

    goto :goto_0

    :sswitch_11
    move v0, v3

    goto :goto_0

    :sswitch_12
    const v0, 0x7f090106

    goto :goto_0

    :sswitch_13
    move v0, v1

    goto :goto_0

    :sswitch_14
    move v0, v2

    goto :goto_0

    :sswitch_15
    move v0, v2

    goto :goto_0

    :sswitch_16
    const v0, 0x7f090107

    goto :goto_0

    :sswitch_17
    const v0, 0x7f090108

    goto :goto_0

    :sswitch_18
    const v0, 0x7f090109

    goto :goto_0

    :sswitch_19
    const v0, 0x7f09010c

    goto :goto_0

    :sswitch_1a
    const v0, 0x7f09010b

    goto :goto_0

    :sswitch_1b
    const v0, 0x7f09010d

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d -> :sswitch_15
        -0x6c -> :sswitch_14
        -0x6b -> :sswitch_13
        -0x6a -> :sswitch_12
        -0x69 -> :sswitch_11
        -0x68 -> :sswitch_10
        -0x67 -> :sswitch_f
        -0x65 -> :sswitch_e
        -0x64 -> :sswitch_d
        -0x17 -> :sswitch_1b
        -0x16 -> :sswitch_1a
        -0x15 -> :sswitch_19
        -0x14 -> :sswitch_18
        -0x13 -> :sswitch_18
        -0x12 -> :sswitch_17
        -0x11 -> :sswitch_16
        -0x10 -> :sswitch_c
        -0xe -> :sswitch_b
        -0xd -> :sswitch_a
        -0xc -> :sswitch_9
        -0xb -> :sswitch_8
        -0xa -> :sswitch_7
        -0x9 -> :sswitch_6
        -0x8 -> :sswitch_5
        -0x7 -> :sswitch_4
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;)V
    .locals 14

    if-nez p7, :cond_0

    new-instance p7, Lcom/google/android/finsky/utils/PackageManagerHelper$1;

    invoke-direct/range {p7 .. p7}, Lcom/google/android/finsky/utils/PackageManagerHelper$1;-><init>()V

    :cond_0
    new-instance v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;ZLcom/google/android/finsky/utils/PackageManagerHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static installPackageWithDowngrade(Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Z)V
    .locals 14

    new-instance v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v8, p1

    move-object/from16 v10, p3

    move/from16 v12, p4

    invoke-direct/range {v0 .. v13}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;ZLcom/google/android/finsky/utils/PackageManagerHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static isAlreadyInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static notifyFailedInstall(Ljava/lang/String;I)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->getInstallFailMessageId(I)I

    move-result v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/google/android/finsky/utils/PackageManagerHelper$2;

    invoke-direct {v4, p1, p0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const v3, 0x7f09010a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static uninstallPackage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/utils/PackageManagerUtils;->uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static verifyApk(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;,
            Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/finsky/utils/Sha1Util;->verify(Ljava/io/InputStream;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "IOException in finally block."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    throw v2

    :catch_1
    move-exception v1

    const-string v3, "IOException in finally block."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static verifySize(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;

    invoke-direct {v3, p2, p3, v0, v1}, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;-><init>(JJ)V

    throw v3

    :cond_0
    return-void
.end method
