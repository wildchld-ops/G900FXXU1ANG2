.class public Lcom/google/android/play/analytics/ProtoCache;
.super Ljava/lang/Object;
.source "ProtoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/analytics/ProtoCache$ElementCache;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/google/android/play/analytics/ProtoCache;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCacheLogEvent:Lcom/google/android/play/analytics/ProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/analytics/ProtoCache$ElementCache",
            "<",
            "Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheLogEventKeyValues:Lcom/google/android/play/analytics/ProtoCache$ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/analytics/ProtoCache$ElementCache",
            "<",
            "Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->INSTANCE:Lcom/google/android/play/analytics/ProtoCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    const-class v1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/analytics/ProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/play/analytics/ProtoCache;->mCacheLogEvent:Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    new-instance v0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    const-class v1, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/analytics/ProtoCache$ElementCache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/play/analytics/ProtoCache;->mCacheLogEventKeyValues:Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/play/analytics/ProtoCache;
    .locals 2

    const-class v1, Lcom/google/android/play/analytics/ProtoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->INSTANCE:Lcom/google/android/play/analytics/ProtoCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/play/analytics/ProtoCache;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ProtoCache;-><init>()V

    sput-object v0, Lcom/google/android/play/analytics/ProtoCache;->INSTANCE:Lcom/google/android/play/analytics/ProtoCache;

    :cond_0
    sget-object v0, Lcom/google/android/play/analytics/ProtoCache;->INSTANCE:Lcom/google/android/play/analytics/ProtoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;)V
    .locals 1
    .param p1    # Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    invoke-virtual {p1}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->clear()Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    iget-object v0, p0, Lcom/google/android/play/analytics/ProtoCache;->mCacheLogEventKeyValues:Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    invoke-virtual {v0, p1}, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public obtainEvent()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/analytics/ProtoCache;->mCacheLogEvent:Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    return-object v0
.end method

.method public obtainKeyValue()Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/analytics/ProtoCache;->mCacheLogEventKeyValues:Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    invoke-virtual {v0}, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    return-object v0
.end method

.method public recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V
    .locals 3
    .param p1    # Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    iget-object v1, p1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->clear()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    iget-object v2, p0, Lcom/google/android/play/analytics/ProtoCache;->mCacheLogEvent:Lcom/google/android/play/analytics/ProtoCache$ElementCache;

    invoke-virtual {v2, p1}, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V
    .locals 3
    .param p1    # Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    iget-object v1, p1, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
