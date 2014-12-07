.class public Lcom/google/android/finsky/billing/iab/PendingNotificationsService;
.super Landroid/app/Service;
.source "PendingNotificationsService.java"


# static fields
.field private static ACTION_ALARM:Ljava/lang/String;

.field public static ACTION_RESTART_ALARM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "action_alarm"

    sput-object v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_ALARM:Ljava/lang/String;

    const-string v0, "action_restart_alarm"

    sput-object v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_RESTART_ALARM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->rescheduleMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const-string v2, "Canceling alarm for account=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmStartTime(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->createPendingIntentForMarketAlarm(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static createPendingIntentForMarketAlarm(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_ALARM:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "account"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vendingpending"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleAlarm(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;-><init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;)V

    new-instance v2, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;-><init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/remoting/api/VendingApi;->checkForPendingNotifications(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public static handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;Z)Z
    .locals 22
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;
    .param p3    # Z

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;->hasNextCheckMillis:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;->nextCheckMillis:J

    sget-boolean v18, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v18, :cond_0

    const-string v18, "Got next_check_millis=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13, v14}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v6, 0x1

    :cond_1
    :goto_0
    const/16 v16, 0x0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;->notification:[Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;

    array-length v11, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v11, :cond_6

    aget-object v15, v3, v8

    iget-object v5, v15, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->category:Ljava/lang/String;

    sget-boolean v18, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v18, :cond_2

    const-string v18, "Processing pending notification with category=%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.google.android.c2dm.intent.RECEIVE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v18, "Cannot find receiver for intent category: %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->cancelMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, v15, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    array-length v12, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v12, :cond_5

    aget-object v2, v4, v7

    iget-object v10, v2, Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;->key:Ljava/lang/String;

    iget-object v0, v2, Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v6, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_6
    sget-boolean v18, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v18, :cond_7

    const-string v18, "Handled %d notifications."

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return v6
.end method

.method private static rescheduleMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$4;

    invoke-direct {v0, p1, p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$4;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;->createThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private restartAlarmsAfterBoot()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$3;-><init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;)V

    invoke-static {v0}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;->createThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # J

    const-string v4, "Setting alarm for account=%s, duration=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->createPendingIntentForMarketAlarm(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v1, v4, p2

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmStartTime(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmTimeout(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const/4 v4, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->stopSelf()V

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_ALARM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->handleAlarm(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_RESTART_ALARM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->restartAlarmsAfterBoot()V

    goto :goto_0

    :cond_2
    const-string v1, "unexpected action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->stopSelf()V

    goto :goto_0
.end method
