.class Lcom/google/android/finsky/library/LibraryReplicator$1;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/LibraryReplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicator;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v4

    if-nez v4, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$100(Lcom/google/android/finsky/library/LibraryReplicator;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$100(Lcom/google/android/finsky/library/LibraryReplicator;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v5, v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$200(Lcom/google/android/finsky/library/LibraryReplicator;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    invoke-static {v4, v5, v7, v7, v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$300(Lcom/google/android/finsky/library/LibraryReplicator;ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;

    invoke-direct {v3}, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;-><init>()V

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->libraryIds:[Ljava/lang/String;

    array-length v2, v4

    new-array v4, v2, [Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    iput-object v4, v3, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v4, v3, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->libraryIds:[Ljava/lang/String;

    aget-object v6, v6, v0

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->buildLibraryState(Ljava/lang/String;)Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;
    invoke-static {v5, v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$400(Lcom/google/android/finsky/library/LibraryReplicator;Ljava/lang/String;)Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    invoke-direct {v1, v4}, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;)V

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$500(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    invoke-interface {v4, v3, v1, v1}, Lcom/google/android/finsky/api/DfeApi;->replicateLibrary(Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Replication request pending."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
