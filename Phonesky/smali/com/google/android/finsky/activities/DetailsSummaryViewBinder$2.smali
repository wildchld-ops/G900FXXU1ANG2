.class Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getCancelPreorderClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$owner:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->val$owner:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const-string v0, "DetailsSummaryViewBinder.confirm_cancel_dialog"

    invoke-virtual {v9, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0xeb

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09019e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v7, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v7, v10}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x131

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v2

    const/16 v3, 0xf5

    const/16 v4, 0xf6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "DetailsSummaryViewBinder.doc"

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DetailsSummaryViewBinder.ownerAccountName"

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->val$owner:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    const/4 v1, 0x7

    invoke-virtual {v7, v0, v1, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v6

    const-string v0, "DetailsSummaryViewBinder.confirm_cancel_dialog"

    invoke-virtual {v6, v9, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
