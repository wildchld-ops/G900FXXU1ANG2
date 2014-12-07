.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->syncDynamicSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

.field final synthetic val$downloadSection:Landroid/view/ViewGroup;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$downloadSection:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->cancel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$downloadSection:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
