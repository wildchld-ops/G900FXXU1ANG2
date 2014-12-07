.class public Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateChangedReceiver.java"


# static fields
.field private static sCachedNetworkInfo:Landroid/net/NetworkInfo;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static flushCachedState()V
    .locals 2

    sget-object v1, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sCachedNetworkInfo:Landroid/net/NetworkInfo;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCachedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    sget-object v1, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sCachedNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->updateCachedNetworkInfo(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sCachedNetworkInfo:Landroid/net/NetworkInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateCachedNetworkInfo(Landroid/content/Context;)V
    .locals 3

    sget-object v2, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    sput-object v1, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->sCachedNetworkInfo:Landroid/net/NetworkInfo;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->updateCachedNetworkInfo(Landroid/content/Context;)V

    return-void
.end method
