.class public Lcom/google/android/play/analytics/EventLogger$Configuration;
.super Ljava/lang/Object;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/EventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field public delayBetweenUploadsMs:J

.field public logDirectoryName:Ljava/lang/String;

.field public mServerUrl:Ljava/lang/String;

.field public maxNumberOfRedirects:I

.field public maxStorageSize:J

.field public minDelayBetweenUploadsMs:J

.field public recommendedLogFileSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "logs"

    iput-object v0, p0, Lcom/google/android/play/analytics/EventLogger$Configuration;->logDirectoryName:Ljava/lang/String;

    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/google/android/play/analytics/EventLogger$Configuration;->maxStorageSize:J

    const-wide/32 v0, 0xc800

    iput-wide v0, p0, Lcom/google/android/play/analytics/EventLogger$Configuration;->recommendedLogFileSize:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/play/analytics/EventLogger$Configuration;->delayBetweenUploadsMs:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/android/play/analytics/EventLogger$Configuration;->minDelayBetweenUploadsMs:J

    const-string v0, "https://android.clients.google.com/play/log"

    iput-object v0, p0, Lcom/google/android/play/analytics/EventLogger$Configuration;->mServerUrl:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/play/analytics/EventLogger$Configuration;->maxNumberOfRedirects:I

    return-void
.end method
