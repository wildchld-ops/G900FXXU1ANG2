.class Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;
.super Ljava/lang/Object;
.source "SubscriptionsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->handleMusicSubscriptions()V
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
        "Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

.field final synthetic val$subscriptionEntries:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->val$subscriptionEntries:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;)V
    .locals 13

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDestroyed:Z
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$000(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Destroyed, ignoring response."

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$100(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Lcom/google/android/finsky/layout/SubscriptionsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->clearSubscriptions()V

    iget-object v7, p1, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;->entry:[Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;

    array-length v11, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v9, v7, v10

    iget-object v0, v9, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v0, :cond_1

    const-string v0, "Received response entry without doc."

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v9, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v8, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->val$subscriptionEntries:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    if-nez v2, :cond_2

    const-string v0, "Subscription entry not available for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$100(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Lcom/google/android/finsky/layout/SubscriptionsSection;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/api/model/Document;

    iget-object v3, v9, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v1, v3}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I
    invoke-static {v3}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$200(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;
    invoke-static {v5}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$300(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v6, v6, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/SubscriptionsSection;->addSubscription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;ILcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$100(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Lcom/google/android/finsky/layout/SubscriptionsSection;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/SubscriptionsSection;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->onResponse(Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;)V

    return-void
.end method
