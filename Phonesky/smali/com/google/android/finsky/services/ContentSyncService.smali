.class public Lcom/google/android/finsky/services/ContentSyncService;
.super Landroid/app/Service;
.source "ContentSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/ContentSyncService$Facade;
    }
.end annotation


# static fields
.field private static final WAKE_ME_UP:Landroid/content/Intent;


# instance fields
.field private final mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field private mReplicating:Z

.field private mReplicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

.field private mReplicationRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/services/ContentSyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/services/ContentSyncService;->WAKE_ME_UP:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStatesReplicator()Lcom/google/android/finsky/appstate/AppStatesReplicator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/ContentSyncService$5;-><init>(Lcom/google/android/finsky/services/ContentSyncService;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/ContentSyncService;)Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/ContentSyncService;

    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/ContentSyncService;)Lcom/google/android/finsky/appstate/AppStatesReplicator;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/ContentSyncService;

    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->scheduleReplication()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/finsky/services/ContentSyncService;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/ContentSyncService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/services/ContentSyncService;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/ContentSyncService;

    iget-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationRequested:Z

    return v0
.end method

.method public static get()Lcom/google/android/finsky/services/ContentSyncService$Facade;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$2;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ContentSyncService$2;-><init>()V

    return-object v0
.end method

.method private static scheduleReplication()V
    .locals 9

    const/4 v8, 0x0

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v1, 0x3a98

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    sget-object v7, Lcom/google/android/finsky/services/ContentSyncService;->WAKE_ME_UP:Landroid/content/Intent;

    invoke-static {v6, v8, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x4e20

    goto :goto_0
.end method

.method public static setupListeners(Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/library/LibraryReplicators;
    .param p1    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$3;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ContentSyncService$3;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/finsky/library/LibraryReplicators;->addListener(Lcom/google/android/finsky/library/LibraryReplicators$Listener;)V

    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$4;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ContentSyncService$4;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

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
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationRequested:Z

    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationRequested:Z

    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    new-instance v1, Lcom/google/android/finsky/services/ContentSyncService$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/services/ContentSyncService$1;-><init>(Lcom/google/android/finsky/services/ContentSyncService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->load(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
