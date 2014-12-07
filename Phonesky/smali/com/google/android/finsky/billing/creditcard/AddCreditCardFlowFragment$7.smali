.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;
.super Ljava/lang/Object;
.source "AddCreditCardFlowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->displayErrors([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

.field final synthetic val$inputValidationErrors:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;->val$inputValidationErrors:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;->val$inputValidationErrors:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    # invokes: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    invoke-static {v7, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->access$900(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    # getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->access$1000(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/google/android/finsky/billing/BillingUtils;->getTopMostView(Landroid/view/ViewGroup;Ljava/util/Collection;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    return-void
.end method
