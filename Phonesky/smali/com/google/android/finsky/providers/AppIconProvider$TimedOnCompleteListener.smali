.class public abstract Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;
.super Ljava/lang/Object;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/AppIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimedOnCompleteListener"
.end annotation


# instance fields
.field private completed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener$1;-><init>(Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public callOnComplete()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->onComplete()V

    :cond_0
    return-void
.end method

.method protected abstract onComplete()V
.end method
