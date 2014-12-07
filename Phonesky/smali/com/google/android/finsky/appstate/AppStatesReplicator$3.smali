.class Lcom/google/android/finsky/appstate/AppStatesReplicator$3;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/AppStatesReplicator;->internalReplicate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field final synthetic val$accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

.field final synthetic val$accountsToReplicate:Ljava/util/List;

.field final synthetic val$currentAccountAppsHash:I

.field final synthetic val$currentSystemAppsHash:I

.field final synthetic val$finishedReplications:[I

.field final synthetic val$successfulReplications:[I

.field final synthetic val$systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;ILcom/google/android/finsky/config/PreferenceFile$SharedPreference;I[I[ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iput p3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentSystemAppsHash:I

    iput-object p4, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iput p5, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentAccountAppsHash:I

    iput-object p6, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$finishedReplications:[I

    iput-object p7, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$successfulReplications:[I

    iput-object p8, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountsToReplicate:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$systemAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentSystemAppsHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountAppsPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$currentAccountAppsHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$finishedReplications:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$successfulReplications:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$accountsToReplicate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$finishedReplications:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->val$successfulReplications:[I

    aget v3, v3, v4

    # invokes: Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->access$200(Lcom/google/android/finsky/appstate/AppStatesReplicator;III)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;->onResponse(Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;)V

    return-void
.end method
