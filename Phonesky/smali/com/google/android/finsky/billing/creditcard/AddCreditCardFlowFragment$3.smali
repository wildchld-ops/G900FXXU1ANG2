.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$3;
.super Ljava/lang/Object;
.source "AddCreditCardFlowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$3;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$3;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    # getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;
    invoke-static {v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->access$400(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
