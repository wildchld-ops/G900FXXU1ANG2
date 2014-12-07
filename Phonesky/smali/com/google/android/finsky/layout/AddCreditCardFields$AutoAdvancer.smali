.class Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;
.super Ljava/lang/Object;
.source "AddCreditCardFields.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AddCreditCardFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoAdvancer"
.end annotation


# instance fields
.field private mMaxLength:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;->mTextView:Landroid/widget/TextView;

    iput p2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;->mMaxLength:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->focusNext(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->focusPrevious(Landroid/view/View;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
