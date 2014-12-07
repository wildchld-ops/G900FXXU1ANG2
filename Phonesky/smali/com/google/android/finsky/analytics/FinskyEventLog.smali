.class public Lcom/google/android/finsky/analytics/FinskyEventLog;
.super Ljava/lang/Object;
.source "FinskyEventLog.java"


# static fields
.field private static sInitializedImpressionId:Z

.field private static sNextImpressionId:J


# instance fields
.field private final mAnalyticsStreamWriter:Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

.field private final mEventLogger:Lcom/google/android/play/analytics/EventLogger;

.field private final mExperiments:Lcom/google/android/finsky/experiments/FinskyExperiments;

.field private final mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sInitializedImpressionId:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/experiments/FinskyExperiments;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mExperiments:Lcom/google/android/finsky/experiments/FinskyExperiments;

    if-eqz p2, :cond_0

    sget-object v2, Lcom/google/android/finsky/config/G;->enablePlayLogs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v11, Lcom/google/android/play/analytics/EventLogger$Configuration;

    invoke-direct {v11}, Lcom/google/android/play/analytics/EventLogger$Configuration;-><init>()V

    sget-object v2, Lcom/google/android/finsky/config/G;->playLogMaxStorageSize:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/google/android/play/analytics/EventLogger$Configuration;->maxStorageSize:J

    sget-object v2, Lcom/google/android/finsky/config/G;->playLogRecommendedFileSize:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/google/android/play/analytics/EventLogger$Configuration;->recommendedLogFileSize:J

    sget-object v2, Lcom/google/android/finsky/config/G;->playLogDelayBetweenUploadsMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/google/android/play/analytics/EventLogger$Configuration;->delayBetweenUploadsMs:J

    sget-object v2, Lcom/google/android/finsky/config/G;->playLogMinDelayBetweenUploadsMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/google/android/play/analytics/EventLogger$Configuration;->minDelayBetweenUploadsMs:J

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/google/android/play/analytics/EventLogger;

    const/4 v3, 0x0

    const-string v4, "androidmarket"

    sget-object v5, Lcom/google/android/play/analytics/EventLogger$LogSource;->MARKET:Lcom/google/android/play/analytics/EventLogger$LogSource;

    const/4 v6, 0x0

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    move-object/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/play/analytics/EventLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/analytics/EventLogger$LogSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/google/android/play/analytics/EventLogger$Configuration;Landroid/accounts/Account;)V

    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    new-instance v2, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    invoke-direct {v2}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mAnalyticsStreamWriter:Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    return-void
.end method

.method static synthetic access$000(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V

    return-void
.end method

.method private static addClickPath(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "Unexpected null PlayStoreUiElement from node %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->cloneElement(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    iget-object v2, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->elementPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v2, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->safeAddElementToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v2, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->elementPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object p0

    goto :goto_0
.end method

.method public static childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "childNode has null element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->findOrAddChild(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v2, v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0
.end method

.method protected static cloneElement(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    iput v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasType:Z

    iput-boolean v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasType:Z

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->clientLogsCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    iput-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->clientLogsCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    iput-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    iget-object v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasServerLogsCookie:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deepCloneAndWipeChildren(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->cloneElement(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->deepCloneAndWipeChildren(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    iget-object v5, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v5, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->safeAddElementToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v5, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v5, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method public static findOrAddChild(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-static {p1, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->isEqual(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    iget-object v6, v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v6, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->safeAddElementToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v6, v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static flushImpression(Landroid/os/Handler;JLcom/google/android/finsky/layout/play/RootUiElementNode;)V
    .locals 2

    invoke-interface {p3}, Lcom/google/android/finsky/layout/play/RootUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V

    return-void
.end method

.method public static flushImpressionAtRoot(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/google/android/finsky/layout/play/RootUiElementNode;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/finsky/layout/play/RootUiElementNode;

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/RootUiElementNode;->flushImpression()V

    :goto_1
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "No RootUiElementNode found in parent chain"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getActiveExperiments()Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mExperiments:Lcom/google/android/finsky/experiments/FinskyExperiments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mExperiments:Lcom/google/android/finsky/experiments/FinskyExperiments;

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->getActiveExperiments()Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNextImpressionId()J
    .locals 6

    const-wide/16 v4, 0x1

    sget-boolean v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sInitializedImpressionId:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sNextImpressionId:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sInitializedImpressionId:Z

    :cond_0
    sget-wide v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sNextImpressionId:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sNextImpressionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-wide v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sNextImpressionId:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sNextImpressionId:J

    :cond_1
    sget-wide v0, Lcom/google/android/finsky/analytics/FinskyEventLog;->sNextImpressionId:J

    return-wide v0
.end method

.method public static isEqual(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    iget v3, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    iget-object v3, p1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtainPlayStoreSearchEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreSearchEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput p0, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasType:Z

    return-object v0
.end method

.method protected static pathToTree(Ljava/util/List;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;",
            ">;)",
            "Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->cloneElement(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v4, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->safeAddElementToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v4, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    :cond_0
    move-object v3, v1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static removeChild(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v0, v1

    invoke-static {v6, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->isEqual(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v3, -0x1

    new-array v2, v6, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-eqz v1, :cond_0

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    sub-int v5, v3, v1

    add-int/lit8 v4, v5, -0x1

    if-lez v4, :cond_1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v0, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v5, 0x1

    :cond_2
    return v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static requestImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void
.end method

.method public static requestImpressions(Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->requestImpressionsImpl(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private static requestImpressionsImpl(Landroid/view/ViewGroup;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->requestImpressionsImpl(Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v5, p0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-eqz v5, :cond_3

    check-cast p0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->requestImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    instance-of v5, p0, Lcom/google/android/play/layout/PlayCardViewBase;

    if-eqz v5, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->getLoggingData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->requestImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->requestImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_1
.end method

.method public static rootImpression(Landroid/os/Handler;JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null child node or element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->rootImpressionImpl(Landroid/os/Handler;JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private static rootImpressionImpl(Landroid/os/Handler;JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 5

    invoke-interface {p3}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->findOrAddChild(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/finsky/analytics/FinskyEventLog$1;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/finsky/analytics/FinskyEventLog$1;-><init>(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    sget-object v1, Lcom/google/android/finsky/config/G;->playLogImpressionSettleTimeMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static safeAddElementToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string v1, "Adding null to element array."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    move-object p0, v0

    goto :goto_0
.end method

.method private sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreLogEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    const-string v1, "4"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->serializeAndWrite(Ljava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V

    return-void
.end method

.method private static sendImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V
    .locals 5

    if-eqz p3, :cond_0

    invoke-interface {p2}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v3, v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreImpressionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->deepCloneAndWipeChildren(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)V

    iput-object v2, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->tree:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-eqz v3, :cond_1

    iput-wide p0, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->id:J

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->hasId:Z

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logImpressionEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;)V

    goto :goto_0
.end method

.method private serializeAndWrite(Ljava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mAnalyticsStreamWriter:Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->writeEvent(Ljava/lang/String;[B[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    invoke-direct {p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->getActiveExperiments()Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;[B[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/analytics/EventProtoCache;->recycle(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V

    goto :goto_0
.end method

.method public static setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasServerLogsCookie:Z

    :cond_0
    return-object p0
.end method

.method public static startNewImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    move-object p0, v0

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/google/android/finsky/layout/play/RootUiElementNode;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/google/android/finsky/layout/play/RootUiElementNode;

    invoke-interface {p0}, Lcom/google/android/finsky/layout/play/RootUiElementNode;->startNewImpression()V

    :cond_1
    return-void
.end method


# virtual methods
.method public logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    :cond_1
    if-eqz p4, :cond_2

    iput p4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object p5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasExceptionType:Z

    :cond_3
    if-eqz p6, :cond_4

    iput-object p6, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logBackgroundEvent(I[B)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    if-eqz p2, :cond_0

    iput-object p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLogsCookie:Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreClickEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    iput p1, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasType:Z

    if-eqz p2, :cond_0

    iput-object p2, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasServerLogsCookie:Z

    :cond_0
    iget-object v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->elementPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v2, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->safeAddElementToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->elementPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-eqz p3, :cond_1

    invoke-static {p3, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->addClickPath(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V

    return-void
.end method

.method public logClickEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreLogEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    const-string v1, "3"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->serializeAndWrite(Ljava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V

    return-void
.end method

.method public logClickEvent(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreClickEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->addClickPath(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V

    goto :goto_0
.end method

.method public logClickEventWithClientCookie(ILcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreClickEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    iput p1, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasType:Z

    if-eqz p2, :cond_0

    iput-object p2, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->clientLogsCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    :cond_0
    iget-object v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->elementPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v2, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->safeAddElementToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;->elementPath:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-eqz p3, :cond_1

    invoke-static {p3, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->addClickPath(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;)V

    return-void
.end method

.method public logDeepLinkEvent(ILjava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;-><init>()V

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasResolvedType:Z

    iput-object p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasExternalUrl:Z

    if-eqz p3, :cond_0

    iput-object p3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->serverLogsCookie:[B

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasServerLogsCookie:Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreLogEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    move-result-object v1

    iput-object v0, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    const-string v2, "6"

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->serializeAndWrite(Ljava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V

    return-void
.end method

.method public logDeepLinkEvent(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;-><init>()V

    const/4 v2, 0x7

    iput v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    iput-boolean v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasResolvedType:Z

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasExternalUrl:Z

    iput-object p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->packageName:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasPackageName:Z

    iput p3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->minVersion:I

    iput-boolean v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasMinVersion:Z

    iput-boolean p4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->newEnough:Z

    iput-boolean v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasNewEnough:Z

    iput-boolean p5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->canResolve:Z

    iput-boolean v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasCanResolve:Z

    iget-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v2}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreLogEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    move-result-object v1

    iput-object v0, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    const-string v2, "6"

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->serializeAndWrite(Ljava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V

    return-void
.end method

.method public logImpressionEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreLogEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    const-string v1, "1"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->serializeAndWrite(Ljava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V

    return-void
.end method

.method public logNlpCleanupData(Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logOperationSuccessBackgroundEvent(IZ)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput-boolean p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v4}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreImpressionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    move-result-object v0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    iput-wide p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->id:J

    iput-boolean v6, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->hasId:Z

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v4}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    iput p3, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->type:I

    iput-boolean v6, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasType:Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p4}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object p4

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->pathToTree(Ljava/util/List;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->tree:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logImpressionEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;)V

    return-void

    :cond_2
    const-string v4, "Encountered empty tree."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 6

    iget-object v4, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v4}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreImpressionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    move-result-object v0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    iput-wide p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->id:J

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->hasId:Z

    :cond_0
    move-object v1, p3

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->pathToTree(Ljava/util/List;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;->tree:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logImpressionEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;)V

    return-void

    :cond_2
    const-string v4, "Encountered empty tree."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public logPurchaseBackgroundEvent(ILjava/lang/String;ILjava/lang/String;I[BJJ)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    if-eqz p6, :cond_0

    iput-object p6, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLogsCookie:Z

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasExceptionType:Z

    :cond_2
    iput p3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferType:Z

    cmp-long v1, p7, v3

    if-ltz v1, :cond_3

    iput-wide p7, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLatencyMs:J

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLatencyMs:Z

    :cond_3
    cmp-long v1, p9, v3

    if-ltz v1, :cond_4

    iput-wide p9, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clientLatencyMs:J

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasClientLatencyMs:Z

    :cond_4
    if-eqz p5, :cond_5

    iput p5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logSearchEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreLogEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    const-string v1, "5"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->serializeAndWrite(Ljava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;)V

    return-void
.end method

.method public logSessionData(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logSettingsBackgroundEvent(IILjava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasToSetting:Z

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasFromSetting:Z

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logSettingsForPackageEvent(IILjava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    iput p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasToSetting:Z

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasFromSetting:Z

    :cond_0
    iput-object p4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method

.method public logWifiAutoUpdateAttempt(Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mProtoCache:Lcom/google/android/finsky/analytics/EventProtoCache;

    invoke-virtual {v1}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    const/16 v1, 0x73

    iput v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput-object p1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    iput-object p2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->sendBackgroundEventToSinks(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void
.end method
