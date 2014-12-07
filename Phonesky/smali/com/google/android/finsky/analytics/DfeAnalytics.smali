.class public Lcom/google/android/finsky/analytics/DfeAnalytics;
.super Ljava/lang/Object;
.source "DfeAnalytics.java"

# interfaces
.implements Lcom/google/android/finsky/analytics/Analytics;


# static fields
.field private static final DFE_ADMOB_ENABLED:Z

.field private static final DISPATCH_PERIOD_MS:I

.field private static final MAX_LOGS_BEFORE_FLUSH:I


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mHandler:Landroid/os/Handler;

.field private final mLogFlusher:Ljava/lang/Runnable;

.field private mPendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Log$ClickLogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/config/G;->logsDispatchIntervalSeconds:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/google/android/finsky/analytics/DfeAnalytics;->DISPATCH_PERIOD_MS:I

    sget-object v0, Lcom/google/android/finsky/config/G;->maxLogQueueSizeBeforeFlush:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/analytics/DfeAnalytics;->MAX_LOGS_BEFORE_FLUSH:I

    sget-object v0, Lcom/google/android/finsky/config/G;->dfeLogsAdMobEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/analytics/DfeAnalytics;->DFE_ADMOB_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/analytics/DfeAnalytics$3;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/analytics/DfeAnalytics;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/analytics/DfeAnalytics;->flushLogs()V

    return-void
.end method

.method private flushLogs()V
    .locals 6

    iget-object v4, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/finsky/protos/Log$LogRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/Log$LogRequest;-><init>()V

    iget-object v4, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/finsky/protos/Log$ClickLogEvent;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/finsky/protos/Log$ClickLogEvent;

    iput-object v4, v2, Lcom/google/android/finsky/protos/Log$LogRequest;->clickEvent:[Lcom/google/android/finsky/protos/Log$ClickLogEvent;

    iget-object v4, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v3, Lcom/google/android/finsky/analytics/DfeAnalytics$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics$1;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V

    new-instance v1, Lcom/google/android/finsky/analytics/DfeAnalytics$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics$2;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V

    iget-object v4, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v4, v2, v3, v1}, Lcom/google/android/finsky/api/DfeApi;->log(Lcom/google/android/finsky/protos/Log$LogRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private scheduleFlush(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/google/android/finsky/analytics/DfeAnalytics;->MAX_LOGS_BEFORE_FLUSH:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/finsky/analytics/DfeAnalytics;->DISPATCH_PERIOD_MS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public logAdMobPageView(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/google/android/finsky/analytics/DfeAnalytics;->DFE_ADMOB_ENABLED:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Logging *ADMOB* page view: loggedUrl=[%s]"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/google/android/finsky/protos/Log$ClickLogEvent;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Log$ClickLogEvent;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/finsky/protos/Log$ClickLogEvent;->eventTime:J

    iput-boolean v4, v0, Lcom/google/android/finsky/protos/Log$ClickLogEvent;->hasEventTime:Z

    iput-object p1, v0, Lcom/google/android/finsky/protos/Log$ClickLogEvent;->url:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/android/finsky/protos/Log$ClickLogEvent;->hasUrl:Z

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    goto :goto_0
.end method
