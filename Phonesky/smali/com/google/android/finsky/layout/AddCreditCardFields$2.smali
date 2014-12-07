.class Lcom/google/android/finsky/layout/AddCreditCardFields$2;
.super Ljava/lang/Object;
.source "AddCreditCardFields.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$2;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields$2;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onCvcFocused()V

    :cond_0
    return-void
.end method
