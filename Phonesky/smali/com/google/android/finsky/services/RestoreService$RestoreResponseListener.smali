.class Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreResponseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    const/4 v6, 0x0

    # setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I
    invoke-static {v2, v6}, Lcom/google/android/finsky/services/RestoreService;->access$1902(Lcom/google/android/finsky/services/RestoreService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    const/4 v6, 0x0

    # setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountObbStorage:I
    invoke-static {v2, v6}, Lcom/google/android/finsky/services/RestoreService;->access$2002(Lcom/google/android/finsky/services/RestoreService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    const/4 v6, 0x0

    # setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyOtherAccount:I
    invoke-static {v2, v6}, Lcom/google/android/finsky/services/RestoreService;->access$2102(Lcom/google/android/finsky/services/RestoreService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    const/4 v6, 0x0

    # setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I
    invoke-static {v2, v6}, Lcom/google/android/finsky/services/RestoreService;->access$2202(Lcom/google/android/finsky/services/RestoreService;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    const/4 v6, 0x0

    # setter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountMaxAttemptsExceeded:I
    invoke-static {v2, v6}, Lcom/google/android/finsky/services/RestoreService;->access$2302(Lcom/google/android/finsky/services/RestoreService;I)I

    const/16 v23, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;->asset:[Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget-object v17, v16, v20

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;->installAsset:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    const-string v2, "Unexpected null InstallAsset for restore asset."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/local/AssetUtils;->assetResponseToDeliveryData(Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->shouldRestore(Ljava/lang/String;ILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Lcom/google/android/finsky/receivers/Installer;)Z
    invoke-static/range {v2 .. v7}, Lcom/google/android/finsky/services/RestoreService;->access$2400(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;ILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Lcom/google/android/finsky/receivers/Installer;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v2}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v13}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->startPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v7, v3, v2, v6, v8}, Lcom/google/android/finsky/receivers/Installer;->setVisibility(Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const-string v15, "restore"

    move-object v8, v3

    move v9, v4

    invoke-interface/range {v7 .. v15}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "Attempted to restore %d assets."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;->asset:[Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "  Skipped (already tracked): %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService;->access$1900(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "  Skipped (obb storage): %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountObbStorage:I
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService;->access$2000(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "  Skipped (other account): %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyOtherAccount:I
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService;->access$2100(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "  Skipped (attempts exceeded): %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountMaxAttemptsExceeded:I
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService;->access$2300(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "  Skipped (already installed): %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService;->access$2200(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v23, :cond_3

    const-string v2, "  Posted for deferred download/install: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/finsky/config/G;->appRestoreHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-virtual {v6}, Lcom/google/android/finsky/services/RestoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/google/android/finsky/services/RestoreService;->getKickIntent(Landroid/content/Context;)Landroid/content/Intent;
    invoke-static {v6}, Lcom/google/android/finsky/services/RestoreService;->access$2500(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    move-wide/from16 v0, v18

    # invokes: Lcom/google/android/finsky/services/RestoreService;->setAlarm(Landroid/content/Intent;J)J
    invoke-static {v2, v6, v0, v1}, Lcom/google/android/finsky/services/RestoreService;->access$1400(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;J)J

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v2}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->mAccountName:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v8, v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishAccount(Ljava/lang/String;ZI)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;->onResponse(Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;)V

    return-void
.end method
