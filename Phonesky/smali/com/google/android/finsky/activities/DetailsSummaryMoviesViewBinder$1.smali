.class Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryMoviesViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->getDownloadClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$owner:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->val$owner:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v5, v5, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->val$owner:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppManageItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
