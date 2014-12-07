.class Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;
.super Ljava/lang/Object;
.source "AuthChallengeStep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->hideKeyboardDelayed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

.field final synthetic val$focusedView:Landroid/view/View;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;->this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;->val$focusedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;->val$focusedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
