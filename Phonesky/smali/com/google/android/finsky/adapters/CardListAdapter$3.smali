.class Lcom/google/android/finsky/adapters/CardListAdapter$3;
.super Ljava/lang/Object;
.source "CardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CardListAdapter;->getSingleDocCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

.field final synthetic val$clusterDoc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CardListAdapter;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/CardListAdapter$3;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CardListAdapter$3;->val$clusterDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x197

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter$3;->val$clusterDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$3;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v3, v3, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$3;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter$3;->val$clusterDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
