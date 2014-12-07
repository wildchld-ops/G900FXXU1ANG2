.class public Lcom/google/android/finsky/utils/TentativeGcRunner;
.super Ljava/lang/Object;
.source "TentativeGcRunner.java"


# instance fields
.field private mAllocatedSinceLastRun:I

.field private mEnabled:Z

.field private mGcRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/finsky/utils/TentativeGcRunner$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/utils/TentativeGcRunner$1;-><init>(Lcom/google/android/finsky/utils/TentativeGcRunner;)V

    iput-object v1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mGcRunnable:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_1

    if-le v0, v2, :cond_1

    sget-object v1, Lcom/google/android/finsky/config/G;->tentativeGcRunnerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mEnabled:Z

    iget-boolean v1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "tentative-gc-runner"

    invoke-static {v1}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;->createHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAllocatingSoon(I)V
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mAllocatedSinceLastRun:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mAllocatedSinceLastRun:I

    const v0, 0x14000

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mAllocatedSinceLastRun:I

    const/high16 v1, 0x80000

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mGcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/utils/TentativeGcRunner;->mAllocatedSinceLastRun:I

    goto :goto_0
.end method
