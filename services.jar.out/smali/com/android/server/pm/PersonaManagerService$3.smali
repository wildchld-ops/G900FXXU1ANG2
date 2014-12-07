.class Lcom/android/server/pm/PersonaManagerService$3;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$removePersona:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 1

    const-string/jumbo v0, "userStopAborted"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    return-void
.end method

.method public userStopped(I)V
    .locals 14

    const-string/jumbo v11, "userStopped"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    if-eqz v11, :cond_1

    const-string v11, "PersonaManagerService"

    const-string/jumbo v12, "userStopped triggered uninstall process..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v11, p1}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v11

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput p1, v4, Landroid/os/Message;->arg1:I

    iget-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    iput v11, v4, Landroid/os/Message;->arg2:I

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    if-eqz v6, :cond_0

    iget-boolean v11, v6, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v11, :cond_0

    invoke-virtual {v6}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v11

    if-eqz v11, :cond_0

    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v10

    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unmounting file system due to super lock: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v6, Landroid/content/pm/PersonaInfo;->state:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v5

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v0, v8

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v11, v7, p1, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v11, v12, p1, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v11, "PersonaManagerService"

    const-string v12, "Failed to unmount file system on super lock."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1
.end method
