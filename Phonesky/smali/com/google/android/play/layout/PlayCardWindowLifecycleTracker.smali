.class public Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;
.super Ljava/lang/Object;
.source "PlayCardWindowLifecycleTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;


# instance fields
.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;

    invoke-direct {v0}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;-><init>()V

    sput-object v0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->INSTANCE:Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->mListenerList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;
    .locals 1

    sget-object v0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->INSTANCE:Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;

    return-object v0
.end method


# virtual methods
.method declared-synchronized cardAttachedToWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->mListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->mListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;

    invoke-interface {v2, p1}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;->onCardAttachedToWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized cardDetachedFromWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->mListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->mListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;

    invoke-interface {v2, p1}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;->onCardDetachedFromWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerListener(Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
