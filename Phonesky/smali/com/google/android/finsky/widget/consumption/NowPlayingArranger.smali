.class public Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;
.super Ljava/lang/Object;
.source "NowPlayingArranger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;
    }
.end annotation


# static fields
.field private static final PERMUTATIONS:[[[I

.field private static sBottomAffinity:Landroid/util/SparseIntArray;

.field private static sCachedArrangements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static sInitialized:Z

.field private static sLeftAffinity:Landroid/util/SparseIntArray;

.field private static sRightAffinity:Landroid/util/SparseIntArray;

.field private static sTopAffinity:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x5

    new-array v0, v0, [[[I

    new-array v1, v5, [[I

    aput-object v1, v0, v5

    new-array v1, v6, [[I

    new-array v2, v6, [I

    aput v5, v2, v5

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v7, [[I

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    const/16 v1, 0x18

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v4

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->PERMUTATIONS:[[[I

    sput-boolean v5, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sInitialized:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sCachedArrangements:Ljava/util/Map;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3
        0x2
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x0
        0x3
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x3
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x2
        0x0
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x3
        0x2
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x0
        0x1
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x0
        0x3
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x1
        0x0
        0x3
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x1
        0x3
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x3
        0x0
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x2
        0x3
        0x1
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x0
        0x2
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x0
        0x1
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x1
        0x2
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x1
        0x0
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x2
        0x0
        0x1
    .end array-data
.end method

.method public static arrange(Ljava/util/List;I)Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;I)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->initialize()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [I

    const/4 v4, 0x0

    :goto_0
    array-length v10, v1

    if-ge v4, v10, :cond_0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-virtual {v10}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v10

    aput v10, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    new-instance v10, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    const/4 v11, 0x0

    new-array v11, v11, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v10, v11, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;-><init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V

    :goto_1
    return-object v10

    :cond_1
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    new-instance v11, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-interface {p0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v11, v10, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;-><init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V

    move-object v10, v11

    goto :goto_1

    :cond_2
    invoke-static {v1, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getCachedCandidate([II)[I

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "Arrangement cache miss, computing from scratch."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {v1, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->computeBestCandidate([II)[I

    move-result-object v8

    :cond_4
    const/4 v10, 0x3

    if-ne v6, v10, :cond_9

    invoke-static {v1, v8}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->determineLayoutVariant3([I[I)I

    move-result v3

    :goto_3
    if-nez v2, :cond_5

    invoke-static {v1, p1, v8, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->putCachedCandidate([II[II)V

    :cond_5
    new-array v7, v6, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    const/4 v4, 0x0

    :goto_4
    array-length v10, v8

    if-ge v4, v10, :cond_a

    aget v0, v8, v4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-virtual {v9}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v10

    if-ne v10, v0, :cond_6

    aput-object v9, v7, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    move v3, p1

    goto :goto_3

    :cond_a
    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string v10, "Widget arrangement: quadrants=%s, layoutVariant=%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    new-instance v10, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    invoke-direct {v10, v7, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;-><init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V

    goto :goto_1
.end method

.method private static computeBestCandidate([II)[I
    .locals 14

    const/4 v5, -0x1

    array-length v6, p0

    new-array v1, v6, [I

    new-array v8, v6, [I

    sget-object v10, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->PERMUTATIONS:[[[I

    aget-object v0, v10, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    invoke-static {p0, v7, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->permute([I[I[I)V

    move v2, p1

    const/4 v10, 0x3

    if-ne v6, v10, :cond_0

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->determineLayoutVariant3([I[I)I

    move-result v2

    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getScore([II)I

    move-result v9

    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "Score for candidate %s: %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-le v9, v5, :cond_2

    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v1, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v9

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v8
.end method

.method private static determineLayoutVariant3([I[I)I
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getCacheKey([II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getCachedCandidate([II)[I
    .locals 3

    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sCachedArrangements:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getCacheKey([II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getScore(II)I
    .locals 4

    const-class v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getScore([II)I
    .locals 5

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    invoke-static {v2, v0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->getLocation(III)B

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getScore(II)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static declared-synchronized initialize()V
    .locals 2

    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sInitialized:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetTopAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetBottomAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetLeftAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetRightAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static permute([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v1, p1, v0

    aget v2, p0, v1

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized putCachedCandidate([II[II)V
    .locals 6

    const-class v4, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sCachedArrangements:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getCacheKey([II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    aget v0, p2, v1

    array-length v3, p0

    invoke-static {v3, v1, p3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->getLocation(III)B

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->updateAffinity(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->writeAffinities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized updateAffinity(II)V
    .locals 3

    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V

    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static writeAffinities()V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetTopAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetBottomAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetLeftAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetRightAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method
