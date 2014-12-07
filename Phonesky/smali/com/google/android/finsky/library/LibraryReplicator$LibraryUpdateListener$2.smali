.class Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Expected pending replication request."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1100(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v1, v1, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v1}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v0, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->RESCHEDULE_REPLICATION_MS:J
    invoke-static {}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1200()J

    move-result-wide v1

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1300(Lcom/google/android/finsky/library/LibraryReplicator;J)V

    goto :goto_0
.end method
