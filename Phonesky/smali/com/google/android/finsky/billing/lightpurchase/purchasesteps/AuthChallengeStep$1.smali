.class Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$1;
.super Ljava/lang/Object;
.source "AuthChallengeStep.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->verifyGaia()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->access$000(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
