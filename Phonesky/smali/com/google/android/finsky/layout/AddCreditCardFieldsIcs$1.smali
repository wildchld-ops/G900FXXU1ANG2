.class Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$1;
.super Ljava/lang/Object;
.source "AddCreditCardFieldsIcs.java"

# interfaces
.implements Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$1;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeightOffsetChanged(F)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$1;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    iget-object v1, v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/BillingAddress;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$1;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    iget-object v2, v2, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/BillingAddress;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$1;->this$0:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;

    iget-object v1, v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    add-float v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
