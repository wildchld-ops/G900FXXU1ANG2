.class public Lcom/google/android/common/http/NetworkStatsEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "NetworkStatsEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;
    }
.end annotation


# instance fields
.field private final mProcessingStartTime:J

.field private final mResponseLatency:J

.field private final mStartRx:J

.field private final mStartTx:J

.field private final mUa:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V
    .locals 0
    .param p1    # Lorg/apache/http/HttpEntity;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # J
    .param p6    # J
    .param p8    # J
    .param p10    # J

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object p2, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I

    iput-wide p4, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J

    iput-wide p6, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J

    iput-wide p8, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J

    iput-wide p10, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .param p0    # Lcom/google/android/common/http/NetworkStatsEntity;

    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I
    .locals 1
    .param p0    # Lcom/google/android/common/http/NetworkStatsEntity;

    iget v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/common/http/NetworkStatsEntity;

    iget-object v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .param p0    # Lcom/google/android/common/http/NetworkStatsEntity;

    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .param p0    # Lcom/google/android/common/http/NetworkStatsEntity;

    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .param p0    # Lcom/google/android/common/http/NetworkStatsEntity;

    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J

    return-wide v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;

    invoke-direct {v1, p0, v0}, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;-><init>(Lcom/google/android/common/http/NetworkStatsEntity;Ljava/io/InputStream;)V

    return-object v1
.end method
