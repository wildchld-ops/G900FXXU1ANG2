.class public Lcom/google/android/finsky/remoting/StateHandleRadioConnection;
.super Ljava/lang/Object;
.source "StateHandleRadioConnection.java"

# interfaces
.implements Lcom/google/android/finsky/remoting/RadioConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/google/android/finsky/remoting/RadioConnection;

.field private mStartCount:I

.field mState:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/RadioConnection;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;->INIT:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    iput-object v0, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mState:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mStartCount:I

    iput-object p1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mDelegate:Lcom/google/android/finsky/remoting/RadioConnection;

    return-void
.end method


# virtual methods
.method public ensureRouteToHost(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mDelegate:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/remoting/RadioConnection;->ensureRouteToHost(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mStartCount:I

    iget-object v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mState:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    sget-object v2, Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;->INIT:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mDelegate:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/RadioConnection;->start()V
    :try_end_1
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;->STARTED:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    iput-object v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mState:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Unable to start radio: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;->STOPPED:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    iput-object v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mState:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mState:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    sget-object v2, Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;->STARTED:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mStartCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mStartCount:I

    iget v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mStartCount:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;->STOPPED:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;

    iput-object v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mState:Lcom/google/android/finsky/remoting/StateHandleRadioConnection$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;->mDelegate:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/RadioConnection;->stop()V
    :try_end_1
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Unable to start radio: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
