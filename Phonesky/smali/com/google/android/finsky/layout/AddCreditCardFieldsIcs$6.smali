.class Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddCreditCardFieldsIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeOut(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$6;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$6;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$6;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
