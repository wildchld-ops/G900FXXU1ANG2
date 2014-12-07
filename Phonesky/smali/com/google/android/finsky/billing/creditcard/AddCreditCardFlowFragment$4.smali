.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$4;
.super Ljava/lang/Object;
.source "AddCreditCardFlowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$4;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$4;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "cvc_popup"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v2, 0x7f040012

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setLayoutId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090213

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$4;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "cvc_popup"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
