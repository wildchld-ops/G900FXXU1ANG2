.class Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddCreditCardFieldsIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->moveToEnteringAddressContractedCardState()V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$2;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$2;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
