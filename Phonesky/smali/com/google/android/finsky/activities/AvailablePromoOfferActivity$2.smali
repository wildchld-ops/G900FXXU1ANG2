.class Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;
.super Ljava/lang/Object;
.source "AvailablePromoOfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

.field final synthetic val$noActionMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->val$noActionMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    # getter for: Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;
    invoke-static {v3}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->access$300(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const/16 v4, 0xfd

    iget-object v5, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v3, v4, v6, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->val$noActionMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "no_action_message"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->val$noActionMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090212

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v6, v4, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    const-string v3, "no_action_message"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;->this$0:Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    # invokes: Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResultAndFinish()V
    invoke-static {v3}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->access$400(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)V

    goto :goto_0
.end method
