.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

.field final synthetic val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

.field final synthetic val$appPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$appPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0xd6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v3, v3, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$appPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v2, v2, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$200(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
