.class public Lcom/google/android/finsky/previews/MediaPlayerWrapper;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mCurrentState:I

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/previews/StatusListener;

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1    # Landroid/media/MediaPlayer;
    .param p2    # I
    .param p3    # I

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->paused()V

    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    return-void
.end method

.method public resetWhileStayingAwake()V
    .locals 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    return-void
.end method

.method public setBetweenTrackState()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public start()V
    .locals 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->playing()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    return-void
.end method
