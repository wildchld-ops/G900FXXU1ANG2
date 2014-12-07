.class Lcom/google/android/finsky/layout/AddCreditCardFields$1;
.super Ljava/lang/Object;
.source "AddCreditCardFields.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AddCreditCardFields;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AddCreditCardFields;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$1;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberEntered()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$1;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onNumberEntered()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$1;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mMonthField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
