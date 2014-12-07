.class Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;
.super Ljava/lang/Object;
.source "MyAppsEmptyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->configure(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/AuthenticatedActivity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;

.field final synthetic val$appCorpus:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

.field final synthetic val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/Toc$CorpusMetadata;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->val$appCorpus:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->val$appCorpus:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->val$appCorpus:Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method
