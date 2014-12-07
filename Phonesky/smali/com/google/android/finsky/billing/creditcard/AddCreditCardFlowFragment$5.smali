.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$5;
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

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$5;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$5;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "privacy_policy"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v3, 0x7f04001a

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setLayoutId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090213

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "url_key"

    sget-object v3, Lcom/google/android/finsky/config/G;->checkoutPrivacyPolicyUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setViewConfiguration(Landroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$5;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "privacy_policy"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
