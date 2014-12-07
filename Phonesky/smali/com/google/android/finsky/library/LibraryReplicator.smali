.class public Lcom/google/android/finsky/library/LibraryReplicator;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;,
        Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;,
        Lcom/google/android/finsky/library/LibraryReplicator$Listener;,
        Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    }
.end annotation


# static fields
.field private static final RESCHEDULE_REPLICATION_MS:J


# instance fields
.field private final mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

.field private mDebugEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mEnableDebugging:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryReplicator$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mReplicationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplicationRunnable:Ljava/lang/Runnable;

.field private final mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/config/G;->libraryReplicatorRescheduleDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/finsky/library/LibraryReplicator;->RESCHEDULE_REPLICATION_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Handler;Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mListeners:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/library/LibraryReplicator$1;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;)V

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    iput-boolean p6, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/library/LibraryReplicator;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator;->scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200()J
    .locals 2

    sget-wide v0, Lcom/google/android/finsky/library/LibraryReplicator;->RESCHEDULE_REPLICATION_MS:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/library/LibraryReplicator;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/library/LibraryReplicator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/library/LibraryReplicator;ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/library/LibraryReplicator;Ljava/lang/String;)Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator;->buildLibraryState(Ljava/lang/String;)Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicator;->internalApplyLibraryUpdate(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/AccountLibrary;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    return-object v0
.end method

.method private buildLibraryState(Ljava/lang/String;)Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getLibrary(Ljava/lang/String;)Lcom/google/android/finsky/library/HashingLibrary;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;-><init>()V

    invoke-static {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getBackendFromLibraryId(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->corpus:I

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasCorpus:Z

    iput-object p1, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->libraryId:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->getHash()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hashCodeSum:J

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum:Z

    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->size()I

    move-result v3

    iput v3, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->librarySize:I

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v1, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->serverToken:[B

    :cond_0
    return-object v1
.end method

.method private checkOnBackgroundHandler()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "This method must be called from the background handler."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createLibraryEntry(Lcom/google/android/finsky/protos/Library$LibraryMutation;Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryEntry;
    .locals 53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v2}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v4, v2, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v0, v2, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v0, v2, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->offerType:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->documentHash:J

    const/16 v38, 0x0

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasValidUntilTimestampMsec:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->validUntilTimestampMsec:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    :cond_0
    const-string v2, "u-wl"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v44

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v8, v0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    const-wide/16 v9, 0x0

    move-object/from16 v0, v50

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, v50

    iget-wide v9, v0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec:J

    :cond_1
    const-wide/16 v11, 0x0

    move-object/from16 v0, v50

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, v50

    iget-wide v11, v0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec:J

    :cond_2
    new-instance v2, Lcom/google/android/finsky/library/LibraryAppEntry;

    invoke-direct/range {v2 .. v12}, Lcom/google/android/finsky/library/LibraryAppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IJ[Ljava/lang/String;JJ)V

    move-object/from16 v39, v2

    :goto_0
    return-object v39

    :cond_3
    const/16 v2, 0xf

    move/from16 v0, v44

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec:J

    move-wide/from16 v23, v0

    if-nez v38, :cond_4

    move-object/from16 v0, v52

    iget-wide v13, v0, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->deprecatedValidUntilTimestampMsec:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    :cond_4
    move-object/from16 v0, v52

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->trialUntilTimestampMsec:J

    move-wide/from16 v25, v0

    :goto_1
    move-object/from16 v0, v52

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->autoRenewing:Z

    move/from16 v27, v0

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->signedPurchaseData:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;->signature:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v13, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object v14, v3

    move-object/from16 v15, p2

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v19, v6

    invoke-direct/range {v13 .. v29}, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJJJZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v39, v13

    goto :goto_0

    :cond_5
    const-wide/16 v25, 0x0

    goto :goto_1

    :cond_6
    new-instance v30, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-object/from16 v31, v3

    move-object/from16 v32, p2

    move/from16 v33, v16

    move-object/from16 v34, v4

    move/from16 v35, v5

    move-wide/from16 v36, v6

    move-wide/from16 v39, v23

    move-wide/from16 v41, v25

    move/from16 v43, v27

    invoke-direct/range {v30 .. v43}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/Long;JJZ)V

    move-object/from16 v39, v30

    goto :goto_0

    :cond_7
    const/16 v2, 0xb

    move/from16 v0, v44

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;->signedPurchaseData:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;->signature:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v39, Lcom/google/android/finsky/library/LibraryInAppEntry;

    move-object/from16 v40, v3

    move-object/from16 v41, p2

    move-object/from16 v42, v4

    move/from16 v43, v5

    move-object/from16 v44, v28

    move-object/from16 v45, v29

    move-wide/from16 v46, v6

    invoke-direct/range {v39 .. v47}, Lcom/google/android/finsky/library/LibraryInAppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_8
    if-eqz v38, :cond_9

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    :goto_2
    new-instance v39, Lcom/google/android/finsky/library/LibraryEntry;

    move-object/from16 v40, v3

    move-object/from16 v41, p2

    move/from16 v42, v16

    move-object/from16 v43, v4

    move/from16 v45, v5

    move-wide/from16 v46, v6

    invoke-direct/range {v39 .. v49}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJ)V

    goto/16 :goto_0

    :cond_9
    const-wide v48, 0x7fffffffffffffffL

    goto :goto_2
.end method

.method private getSupportedLibraries([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/library/AccountLibrary;->supportsLibrary(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v7, p1

    if-ne v6, v7, :cond_3

    const/4 v4, 0x0

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    if-lez v6, :cond_5

    array-length v7, p1

    sub-int/2addr v7, v6

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/library/AccountLibrary;->supportsLibrary(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    aput-object v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-object v4, p1

    goto :goto_1
.end method

.method private declared-synchronized handleNextRequest(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private internalApplyLibraryUpdate(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v1, v15, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/library/LibraryReplicator;->checkOnBackgroundHandler()V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14, v10}, Lcom/google/android/finsky/library/AccountLibrary;->supportsLibrary(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "Ignoring library update for unsupported library %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v14, 0x5

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_1
    return v14

    :cond_1
    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    invoke-static {v14}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14}, Lcom/google/android/finsky/library/AccountLibrary;->disableListeners()V

    :try_start_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->status:I

    packed-switch v14, :pswitch_data_0

    const-string v14, "Unknown LibraryUpdate.status: libraryId=%s, status=%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->status:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    array-length v14, v14

    if-lez v14, :cond_4

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14, v10, v12}, Lcom/google/android/finsky/library/AccountLibrary;->setServerToken(Ljava/lang/String;[B)V

    invoke-static {v10}, Lcom/google/android/finsky/utils/FinskyPreferences;->getLibraryServerToken(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v15}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v15

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-boolean v14, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v14, :cond_4

    const-string v14, "Updated server token: libraryId=%s serverToken=%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasMore:Z

    goto :goto_1

    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v15}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lcom/google/android/finsky/library/SQLiteLibrary;->resetAccountLibrary(Landroid/accounts/Account;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14, v10}, Lcom/google/android/finsky/library/AccountLibrary;->resetLibrary(Ljava/lang/String;)V

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v14, v14

    invoke-static {v14}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v8, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_6

    aget-object v11, v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/google/android/finsky/library/LibraryReplicator;->createLibraryEntry(Lcom/google/android/finsky/protos/Library$LibraryMutation;Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v9

    iget-boolean v14, v11, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14, v9}, Lcom/google/android/finsky/library/AccountLibrary;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v14, v9}, Lcom/google/android/finsky/library/SQLiteLibrary;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    const/4 v6, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v15}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    throw v14

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14, v3}, Lcom/google/android/finsky/library/AccountLibrary;->addAll(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v14, v3}, Lcom/google/android/finsky/library/SQLiteLibrary;->addAll(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v6, :cond_3

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/finsky/library/LibraryReplicator;->notifyMutationListeners(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    sget-boolean v14, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v14, :cond_8

    const-string v14, "NOT_MODIFIED received for libraryId=%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v15}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized notifyMutationListeners(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/LibraryReplicator$Listener;

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/finsky/library/LibraryReplicator$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/finsky/library/LibraryReplicator$3;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$Listener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    :cond_0
    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;-><init>(Lcom/google/android/finsky/library/LibraryReplicator$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->timestampMs:J
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1602(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;J)J

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->type:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1702(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;I)I

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->tag:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1802(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;
    invoke-static {v0, p2}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1902(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Lcom/google/android/finsky/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    # setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->volleyError:Lcom/android/volley/VolleyError;
    invoke-static {v0, p3}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$2002(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/android/finsky/library/LibraryReplicator$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mListeners:Ljava/util/List;

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

.method public applyLibraryUpdate(Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicator$2;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dumpState(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v3}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LibraryReplicator (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    if-eqz v3, :cond_0

    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  eventsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->dumpState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  eventsCount=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized replicate([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " libraryIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator;->getSupportedLibraries([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v0, "Skipping replication request since all libraries are unsupported."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;-><init>([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
