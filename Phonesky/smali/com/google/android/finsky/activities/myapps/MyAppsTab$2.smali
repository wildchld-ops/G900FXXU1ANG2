.class Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;
.super Ljava/lang/Object;
.source "MyAppsTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$openDetailsIfNecessary:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTab;ZLcom/google/android/finsky/api/model/Document;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->val$openDetailsIfNecessary:Z

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    iput p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->val$openDetailsIfNecessary:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    iget-object v1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;->openDocDetails(Lcom/google/android/finsky/api/model/Document;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->val$position:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    # invokes: Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTab;)V

    return-void
.end method
