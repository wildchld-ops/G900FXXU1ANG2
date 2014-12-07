.class Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddCreditCardFieldsIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->moveToEnteringAddressExpandedCardState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$5;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$5;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    # getter for: Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->access$100(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$5;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    # getter for: Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->access$100(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
