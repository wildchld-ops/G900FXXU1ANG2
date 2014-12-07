.class Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;
.super Ljava/lang/Object;
.source "AuthChallengeStep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showKeyboardDelayed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

.field final synthetic val$focusView:Landroid/view/View;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;->val$focusView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;->val$focusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;->val$focusView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
