.class Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;
.super Ljava/lang/Object;
.source "AddCreditCardFields.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AddCreditCardFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CvcTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/layout/AddCreditCardFields;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/layout/AddCreditCardFields;Lcom/google/android/finsky/layout/AddCreditCardFields$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/AddCreditCardFields;
    .param p2    # Lcom/google/android/finsky/layout/AddCreditCardFields$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFields;)V

    return-void
.end method

.method private getCurrentCvcLength()I
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getMaxCvcLength()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    iget-object v1, v1, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    iget-object v1, v1, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    iget v0, v1, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    :cond_0
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;->getCurrentCvcLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onCvcEntered()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCvcField:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->focusPrevious(Landroid/view/View;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method
