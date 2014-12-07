.class Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;
.super Ljava/lang/Object;
.source "LightPurchaseFlowActivity.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->acquire(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreePurchaseSuccess(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 7
    .param p1    # Landroid/accounts/Account;
    .param p2    # Lcom/google/android/finsky/api/model/Document;

    const/4 v4, 0x0

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$000(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v0

    iget v0, v0, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->logConfirmFreeDownload()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$100(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->success()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$200(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDocid:Lcom/google/android/finsky/protos/Common$Docid;
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$000(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v0

    iget v0, v0, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$300(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$400(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialogIfNeeded(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->success()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$200(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$300(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$400(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->openItem(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->success()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$200(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;)V

    goto :goto_0
.end method
