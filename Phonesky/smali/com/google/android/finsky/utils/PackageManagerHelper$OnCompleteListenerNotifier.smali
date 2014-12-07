.class Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;
.super Landroid/os/AsyncTask;
.source "PackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCompleteListenerNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllowDowngrade:Z

.field private final mContentUri:Landroid/net/Uri;

.field private final mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

.field private final mExpectedSignature:Ljava/lang/String;

.field private final mExpectedSize:J

.field private final mHandler:Landroid/os/Handler;

.field private final mIsForwardLocked:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

.field private final mShowErrorNotifications:Z

.field private final mShowProgress:Z

.field private final mTitle:Ljava/lang/String;

.field private volatile mVerificationException:Ljava/io/IOException;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    iput-object p5, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSignature:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowProgress:Z

    iput-boolean p7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowErrorNotifications:Z

    iput-object p8, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    iput-boolean p9, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsForwardLocked:Z

    iput-object p10, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    iput-boolean p12, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mAllowDowngrade:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;ZLcom/google/android/finsky/utils/PackageManagerHelper$1;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowErrorNotifications:Z

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 6

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    iget-wide v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSignature:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper;->verifyApk(Ljava/io/InputStream;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/finsky/download/Storage;->getFileUriForContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    # invokes: Lcom/google/android/finsky/utils/PackageManagerHelper;->verifySize(Landroid/content/Context;Landroid/net/Uri;J)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->access$100(Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    instance-of v1, v1, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    check-cast v12, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;

    const-string v1, "Signature check of %s failed, size expected=%d actual=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    aput-object v15, v5, v6

    const/4 v6, 0x1

    iget-wide v15, v12, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;->expected:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x2

    iget-wide v15, v12, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;->actual:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v5, v6

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    if-nez v1, :cond_1

    const/16 v10, 0x397

    :goto_0
    const-string v1, "Signature check failed, aborting installation."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowErrorNotifications:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v5, v10, v6}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZILjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/16 v10, 0x396

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    instance-of v1, v1, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    check-cast v11, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;

    const-string v1, "Signature check of %s failed, hash expected=%s actual=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    aput-object v15, v5, v6

    const/4 v6, 0x1

    iget-object v15, v11, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;->expected:Ljava/lang/String;

    aput-object v15, v5, v6

    const/4 v6, 0x2

    iget-object v15, v11, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;->actual:Ljava/lang/String;

    aput-object v15, v5, v6

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v10, 0x3c0

    goto :goto_0

    :cond_3
    const-string v1, "Verification check of %s failed, exception=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    aput-object v15, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerificationException:Ljava/io/IOException;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v10, 0x3c1

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsForwardLocked:Z

    if-eqz v1, :cond_5

    or-int/lit8 v4, v4, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mAllowDowngrade:Z

    if-eqz v1, :cond_6

    const-string v1, "Allowing downgrade install for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    aput-object v15, v5, v6

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    or-int/lit16 v4, v4, 0x80

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/utils/PackageManagerHelper;->isAlreadyInstalled(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->access$200(Ljava/lang/String;)Z

    move-result v13

    new-instance v3, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;-><init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowProgress:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    invoke-interface {v14, v1, v5, v13}, Lcom/google/android/finsky/utils/Notifier;->showInstallingMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    iget v9, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->version:I

    const/4 v1, 0x1

    if-eq v9, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowErrorNotifications:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const/4 v5, 0x0

    const/16 v6, 0x394

    const/4 v15, 0x0

    invoke-interface {v1, v5, v6, v15}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZILjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/google/android/finsky/utils/PackageManagerUtils;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowErrorNotifications:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const/4 v5, 0x0

    const/16 v6, 0x391

    const/4 v15, 0x0

    invoke-interface {v1, v5, v6, v15}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    iget-object v7, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mEncryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    iget-object v8, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hmacKey:Ljava/lang/String;

    or-int/lit8 v4, v4, 0x1

    const-string v1, "Install encrypted %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    aput-object v15, v5, v6

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    :goto_2
    if-eqz v2, :cond_e

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    invoke-static/range {v1 .. v8}, Lcom/google/android/finsky/utils/PackageManagerUtils;->installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v2, p1

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mShowErrorNotifications:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPackageName:Ljava/lang/String;

    const/4 v5, -0x3

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const/4 v5, 0x0

    const/4 v6, -0x3

    const/4 v15, 0x0

    invoke-interface {v1, v5, v6, v15}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
