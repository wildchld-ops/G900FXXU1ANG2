.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;
.super Ljava/lang/Object;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCEPConnection"
.end annotation


# instance fields
.field mAdminUid:I

.field mCepProtocol:Ljava/lang/String;

.field mContainerUid:I

.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;IILjava/lang/String;)V
    .locals 2
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    iput v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    iput-object p4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "In Binder Died death receipient"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "containerID"

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "protocol"

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "EnterpriseCertEnrollPolicy"

    const-string v8, "cepAgentUid"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v7, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v6, v7, v3, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception in binderDied:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] and PackageName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offer interface in blocking queue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {p2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1
    move-exception v0

    :try_start_4
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in onServiceDisconneted:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 10
    .param p1    # Landroid/content/ComponentName;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "containerID"

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "protocol"

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "EnterpriseCertEnrollPolicy"

    const-string v8, "cepAgentUid"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v7, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] and PackageName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v6, p0, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_3

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
