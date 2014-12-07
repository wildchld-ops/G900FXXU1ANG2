.class public Lcom/google/android/finsky/utils/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/google/android/finsky/utils/Notifier;


# static fields
.field private static final SUPPORTS_RICH_NOTIFICATIONS:Z

.field private static final UNKNOWN_PACKAGE_ID:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/finsky/utils/NotificationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "unknown package"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p4}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "error_doc_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "error_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "error_html_message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method private declared-synchronized drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x1050005

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v10, 0x1050006

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gt v4, v2, :cond_0

    if-gt v3, v1, :cond_0

    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :goto_0
    monitor-exit p0

    return-object v7

    :cond_0
    :try_start_1
    const-string v10, "Resource for %s is %s of size %d*%d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v12, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v10, v2

    int-to-float v11, v4

    div-float/2addr v10, v11

    int-to-float v11, v1

    int-to-float v12, v3

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v10, 0x3f800000

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v10, v4

    mul-float/2addr v10, v5

    float-to-int v9, v10

    int-to-float v10, v3

    mul-float/2addr v10, v5

    float-to-int v8, v10

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private static logNotification(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "error_return_code"

    const/4 v3, -0x1

    invoke-virtual {p4, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz p0, :cond_1

    const-string v1, "Showing"

    :goto_1
    const-string v2, "%s notification: [ID=%s, Title=%s, Message=%s, returnCode=%d]"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "Suppressing"

    goto :goto_1
.end method

.method private logNotificationImpression(I)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private showAppNotificationOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/finsky/utils/NotificationListener;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v2, v2, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v0, "error_return_code"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationListener;->showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p3, p4, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v0, "error_return_code"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationListener;->showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;ZLandroid/content/Intent;)V
    .locals 9

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v7, p5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    invoke-virtual {v1, p6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz p7, :cond_1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    if-lez p8, :cond_2

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_2
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez p1, :cond_5

    sget v3, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    :goto_0
    if-nez p10, :cond_6

    iget-object v7, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v8, 0x50000000

    move-object/from16 v0, p9

    invoke-static {v7, v3, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz p11, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v8, 0x50000000

    move-object/from16 v0, p11

    invoke-static {v7, v3, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-static {}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->isLimitedOrEduUser()Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    move-object/from16 v0, p9

    invoke-static {v6, p1, p3, p4, v0}, Lcom/google/android/finsky/utils/NotificationManager;->logNotification(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v8, 0x50000000

    move-object/from16 v0, p9

    invoke-static {v7, v3, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private showSuccessfulNewInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    const/16 v1, 0x385

    invoke-direct {p0, v1}, Lcom/google/android/finsky/utils/NotificationManager;->logNotificationImpression(I)V

    invoke-static/range {p2 .. p3}, Lcom/google/android/finsky/receivers/NotificationReceiver;->getSuccessfullyInstalledClickedIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/4 v8, 0x0

    sget-boolean v1, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0}, Lcom/google/android/finsky/utils/NotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_1
    :goto_0
    const/4 v6, 0x0

    const v7, 0x7f020168

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;ZLandroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showSuccessfulUpdateMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/NotificationManager;->hideAllMessagesForPackage(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->successfulUpdateNotificationAppList:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v2, 0xa

    const/16 v3, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "\n"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v17

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->successfulUpdateNotificationAppList:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0900e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-virtual {v2, v3, v10, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    packed-switch v10, :pswitch_data_0

    const v2, 0x7f090312

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const/4 v8, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x4

    add-int/lit8 v8, v10, -0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/4 v2, 0x1

    if-gt v10, v2, :cond_0

    const/16 v2, 0x386

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/finsky/utils/NotificationManager;->logNotificationImpression(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/receivers/NotificationReceiver;->getSuccessfullyUpdatedClickedIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {}, Lcom/google/android/finsky/receivers/NotificationReceiver;->getSuccessfullyUpdatedDeletedIntent()Landroid/content/Intent;

    move-result-object v13

    const/4 v9, 0x0

    sget-boolean v2, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-le v10, v2, :cond_3

    const v14, 0x7f020169

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/finsky/utils/NotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_1
    const-string v3, "successful update"

    const v8, 0x7f020168

    const/4 v12, 0x1

    move-object/from16 v2, p0

    move-object v7, v6

    invoke-direct/range {v2 .. v13}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;ZLandroid/content/Intent;)V

    :goto_3
    return-void

    :cond_2
    const-string v2, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "App count is 0 in successful update notification"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v2, 0x7f09030e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_3
    const v2, 0x7f09030f

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_4
    const v2, 0x7f090310

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const/4 v8, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_5
    const v2, 0x7f090311

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const/4 v8, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const/4 v8, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_3
    const v14, 0x7f020168

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public hideAllMessagesForPackage(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez p1, :cond_0

    sget v1, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public hideInstallingMessage()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "package installing"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public hideUpdatesAvailableMessage()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "updates"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    return-void
.end method

.method public showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900da

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900db

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900dd

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p4, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900dc

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900de

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900df

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900e1

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p4, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900e0

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public showExternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ce

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900cf

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/NotificationManager;->hideInstallingMessage()V

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public showInstallingMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const v0, 0x7f0900e4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    const v0, 0x7f0900e5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v9

    :goto_2
    const-string v1, "package installing"

    const v6, 0x1080081

    move-object v0, p0

    move-object v3, p1

    move-object v7, v5

    move v10, v8

    move-object v11, v5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;ZLandroid/content/Intent;)V

    return-void

    :cond_0
    const v0, 0x7f0900e2

    goto :goto_0

    :cond_1
    const v0, 0x7f0900e3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v5, v5, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_2
.end method

.method public showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900cb

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900cc

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900cd

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d4

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900d5

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0900d6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/utils/NotificationManager;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const v5, 0x108008a

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, p3, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method public showNewUpdatesAvailableMessage(Ljava/util/List;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    const v1, 0x7f09020a

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0e0004

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    packed-switch v15, :pswitch_data_0

    const v2, 0x7f0900ef

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x4

    add-int/lit8 v7, v15, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v8, 0x0

    sget-boolean v1, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-le v15, v1, :cond_1

    const v13, 0x7f02016b

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/google/android/finsky/utils/NotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_0
    const/16 v1, 0x384

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/NotificationManager;->logNotificationImpression(I)V

    invoke-static {}, Lcom/google/android/finsky/receivers/NotificationReceiver;->getNewUpdateClickedIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v2, "updates"

    const v7, 0x7f02016a

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v6, v5

    move/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;ZLandroid/content/Intent;)V

    :goto_2
    return-void

    :pswitch_0
    const-string v1, "App count is 0 in new updates notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const v2, 0x7f0900ea

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0900eb

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_3
    const v2, 0x7f0900ec

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    const v2, 0x7f0900ed

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_5
    const v2, 0x7f0900ee

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x4

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_1
    const v13, 0x7f02016a

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d7

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d8

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 8

    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    sget v3, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v7, 0x50000000

    invoke-static {v6, v3, p6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, p5, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, p3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, p3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->isLimitedOrEduUser()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    invoke-static {v5, p1, p3, v0, p6}, Lcom/google/android/finsky/utils/NotificationManager;->logNotification(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public showOutstandingUpdatesMessage(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    const v1, 0x7f0e0001

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0e0001

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    packed-switch v16, :pswitch_data_0

    const v2, 0x7f0900ef

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x4

    add-int/lit8 v7, v16, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v8, 0x0

    sget-boolean v1, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, v16

    if-le v0, v1, :cond_1

    const v13, 0x7f02016b

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/google/android/finsky/utils/NotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_0
    const/16 v1, 0x387

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/NotificationManager;->logNotificationImpression(I)V

    invoke-static {}, Lcom/google/android/finsky/receivers/NotificationReceiver;->getOutstandingUpdateClickedIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v2, "updates"

    const v7, 0x7f02016a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v6, v5

    invoke-direct/range {v1 .. v12}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;ZLandroid/content/Intent;)V

    :goto_2
    return-void

    :pswitch_0
    const-string v1, "App count is 0 in new outstanding updates notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const v2, 0x7f0900ea

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0900eb

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_3
    const v2, 0x7f0900ec

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    const v2, 0x7f0900ed

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_5
    const v2, 0x7f0900ee

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x4

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_1
    const v13, 0x7f02016a

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public showSubscriptionsWarningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const v5, 0x108008a

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/NotificationManager;->hideInstallingMessage()V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/utils/NotificationManager;->showSuccessfulUpdateMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/NotificationManager;->showSuccessfulNewInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showUpdatesNeedApprovalMessage(Ljava/util/List;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    const v1, 0x7f0e0002

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const/4 v5, 0x0

    packed-switch v16, :pswitch_data_0

    const v2, 0x7f0900f5

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x4

    add-int/lit8 v7, v16, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v8, 0x0

    sget-boolean v1, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, v16

    if-le v0, v1, :cond_1

    const v13, 0x7f02016b

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/google/android/finsky/utils/NotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_0
    const/16 v1, 0x388

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/NotificationManager;->logNotificationImpression(I)V

    invoke-static {}, Lcom/google/android/finsky/receivers/NotificationReceiver;->getNewUpdateNeedApprovalClicked()Landroid/content/Intent;

    move-result-object v10

    const-string v2, "updates"

    const v7, 0x7f02016a

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v6, v5

    move/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;ZLandroid/content/Intent;)V

    :goto_2
    return-void

    :pswitch_0
    const-string v1, "App count is 0 in need approval notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const v2, 0x7f0900f0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0900f1

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_3
    const v2, 0x7f0900f2

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    const v2, 0x7f0900f3

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_5
    const v2, 0x7f0900f4

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x3

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v7, 0x4

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v15, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_1
    const v13, 0x7f02016a

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
