.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/utils/AppSupport$RefundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundApp(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

.field final synthetic val$tryUninstall:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->val$tryUninstall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/utils/AppSupport$RefundResult;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-boolean v2, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mIsPendingRefund:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "enum %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->val$tryUninstall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    goto :goto_0

    :pswitch_1
    const-string v0, "CANNOT_REFUND received by DFE."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->handleRefundFailure()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->handleRefundFailure()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRefundStart()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mIsPendingRefund:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$7;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    return-void
.end method
