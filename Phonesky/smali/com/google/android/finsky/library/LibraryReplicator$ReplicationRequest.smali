.class Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/LibraryReplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplicationRequest"
.end annotation


# instance fields
.field public debugTag:Ljava/lang/String;

.field public final finishRunnable:Ljava/lang/Runnable;

.field public final libraryIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
    .param p2    # Ljava/lang/Runnable;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->libraryIds:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    return-void
.end method
