.class public Lcom/android/mms/ui/BubbleViewCache;
.super Ljava/lang/Object;
.source "BubbleViewCache.java"


# static fields
.field private static final CACHE_LOG:Ljava/lang/String; = "Mms/BubbleViewCache"

.field private static final MAX_INFLATE_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Mms/BubbleViewCache"

.field private static sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

.field private static sUsedViewMap:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v1, Lcom/android/mms/ui/BubbleViewCache;

    monitor-enter v1

    :try_start_0
    const-string v0, "clearCache bubble"

    invoke-static {v0}, Lcom/android/mms/ui/BubbleViewCache;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BubbleViewCache;->sUsedViewMap:[Z
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

.method public static declared-synchronized fillCache()V
    .locals 8

    const/16 v7, 0x8

    const-class v3, Lcom/android/mms/ui/BubbleViewCache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    const-string v2, "Mms/BubbleViewCache"

    const-string v4, "instance is not null, ignore new caching...."

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_0
    const/16 v2, 0x8

    :try_start_1
    new-array v2, v2, [Lcom/android/mms/ui/MessageListItem;

    sput-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    const/16 v2, 0x8

    new-array v2, v2, [Z

    sput-object v2, Lcom/android/mms/ui/BubbleViewCache;->sUsedViewMap:[Z

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_1

    sget-object v4, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    const v2, 0x7f04005d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "fillCache bubble = 8"

    invoke-static {v2}, Lcom/android/mms/ui/BubbleViewCache;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getCacheView()Landroid/view/View;
    .locals 5

    const/16 v4, 0x8

    const-class v3, Lcom/android/mms/ui/BubbleViewCache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    if-nez v2, :cond_1

    const-string v2, "Mms/BubbleViewCache"

    const-string v4, "getCacheView, null array"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    monitor-exit v3

    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    :try_start_1
    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sUsedViewMap:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sUsedViewMap:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v0

    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    aget-object v1, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCacheView,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " usedCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->getUsedCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/BubbleViewCache;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getUsedCount()I
    .locals 3

    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/mms/ui/BubbleViewCache;->sUsedViewMap:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Mms/BubbleViewCache"

    invoke-static {v0, p0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized returnCacheView(Lcom/android/mms/ui/MessageListItem;)V
    .locals 4

    const-class v2, Lcom/android/mms/ui/BubbleViewCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/mms/ui/BubbleViewCache;->sItemViewArray:[Lcom/android/mms/ui/MessageListItem;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_2

    sget-object v1, Lcom/android/mms/ui/BubbleViewCache;->sUsedViewMap:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return cache view,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/BubbleViewCache;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
