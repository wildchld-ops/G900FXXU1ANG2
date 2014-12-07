.class Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->onResponse(Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

.field final synthetic val$libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->val$libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v13, "Expected pending replication request."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/library/SQLiteLibrary;->reopen()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->val$libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    iget-object v2, v13, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;->update:[Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    array-length v10, v2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v12, v2, v9

    iget-object v13, v12, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v11, v12, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->mOriginalTokens:Ljava/util/Map;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->access$900(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v14, v14, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-static {v14}, Lcom/google/android/finsky/library/LibraryReplicator;->access$800(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$200(Lcom/google/android/finsky/library/LibraryReplicator;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    invoke-static/range {v13 .. v17}, Lcom/google/android/finsky/library/LibraryReplicator;->access$300(Lcom/google/android/finsky/library/LibraryReplicator;ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    :cond_1
    const-string v13, "Tokens changed, not applying library update for libraryId=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget v13, v12, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    invoke-static {v13}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v14, v14, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v14}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->internalApplyLibraryUpdate(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)Z
    invoke-static {v13, v12, v14}, Lcom/google/android/finsky/library/LibraryReplicator;->access$700(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/library/SQLiteLibrary;->close()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->val$libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    iget-object v3, v13, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$800(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/library/AccountLibrary;->setAutoAcquireTags([Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->commaPackStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$800(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v13

    iget-object v1, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v13, Lcom/google/android/finsky/utils/FinskyPreferences;->autoAcquireTags:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v13, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    new-array v5, v13, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    new-instance v6, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v15, v15, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v15}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v15

    iget-object v15, v15, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "[c]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v5, v13, v14}, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;-><init>([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    invoke-static {v13, v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1000(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v14, 0x0

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v13, v14}, Lcom/google/android/finsky/library/LibraryReplicator;->access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->RESCHEDULE_REPLICATION_MS:J
    invoke-static {}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1200()J

    move-result-wide v14

    # invokes: Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V
    invoke-static {v13, v14, v15}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1300(Lcom/google/android/finsky/library/LibraryReplicator;J)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v13, v13, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1100(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v14, v14, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    # getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v14}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method
