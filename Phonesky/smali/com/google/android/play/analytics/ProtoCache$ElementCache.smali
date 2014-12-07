.class Lcom/google/android/play/analytics/ProtoCache$ElementCache;
.super Ljava/lang/Object;
.source "ProtoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ProtoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCache:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mHighWater:I

.field private final mLimit:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mLimit:I

    iput v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    iput v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mHighWater:I

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCache:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mClazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public obtain()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    iget-object v2, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCache:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    aget-object v1, v2, v3

    iget-object v2, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCache:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    monitor-exit p0

    :goto_0
    return-object v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mClazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    # getter for: Lcom/google/android/play/analytics/ProtoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception from mClazz.newInstance "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    iget v1, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mLimit:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCache:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    iget v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    iget v1, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mHighWater:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mCount:I

    iput v0, p0, Lcom/google/android/play/analytics/ProtoCache$ElementCache;->mHighWater:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
