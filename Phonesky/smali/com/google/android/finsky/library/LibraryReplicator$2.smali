.class Lcom/google/android/finsky/library/LibraryReplicator$2;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicator;->applyLibraryUpdate(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicator;

.field final synthetic val$debugTag:Ljava/lang/String;

.field final synthetic val$libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->val$libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->val$debugTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/library/SQLiteLibrary;->reopen()V

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->val$libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->val$debugTag:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->internalApplyLibraryUpdate(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->access$700(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$2;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/library/SQLiteLibrary;->close()V

    return-void
.end method
