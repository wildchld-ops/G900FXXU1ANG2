.class public Lcom/nuance/connect/util/UUIDFactory;
.super Ljava/lang/Object;
.source "UUIDFactory.java"


# static fields
.field private static clockSeqAndNode:J = 0x0L

.field private static final deltaFromEpochForType1UUID:J = 0x1b21dd213814000L

.field private static final uuidTypeVersion:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lcom/nuance/connect/util/UUIDFactory;->clockSeqAndNode:J

    sget-wide v0, Lcom/nuance/connect/util/UUIDFactory;->clockSeqAndNode:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x42dfffffffffffc0L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    const-wide v4, 0x30000000000L

    xor-long/2addr v2, v4

    or-long/2addr v0, v2

    sput-wide v0, Lcom/nuance/connect/util/UUIDFactory;->clockSeqAndNode:J

    sget-wide v0, Lcom/nuance/connect/util/UUIDFactory;->clockSeqAndNode:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40cfff8000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sput-wide v0, Lcom/nuance/connect/util/UUIDFactory;->clockSeqAndNode:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateTimeChunk(J)J
    .locals 10
    .param p0    # J

    const-wide/16 v4, 0x2710

    mul-long/2addr v4, p0

    const-wide v6, 0x1b21dd213814000L

    add-long v2, v4, v6

    const/16 v4, 0x20

    shl-long v0, v2, v4

    const-wide v4, 0xffff00000000L

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x1000

    const/16 v6, 0x30

    shr-long v6, v2, v6

    const-wide/16 v8, 0xfff

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public static final generateUUID(J)Ljava/util/UUID;
    .locals 5
    .param p0    # J

    invoke-static {p0, p1}, Lcom/nuance/connect/util/UUIDFactory;->generateTimeChunk(J)J

    move-result-wide v2

    sget-wide v0, Lcom/nuance/connect/util/UUIDFactory;->clockSeqAndNode:J

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method