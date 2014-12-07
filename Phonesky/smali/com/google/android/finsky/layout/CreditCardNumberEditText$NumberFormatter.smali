.class Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;
.super Ljava/lang/Object;
.source "CreditCardNumberEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/CreditCardNumberEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/layout/CreditCardNumberEditText;Lcom/google/android/finsky/layout/CreditCardNumberEditText$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/CreditCardNumberEditText;
    .param p2    # Lcom/google/android/finsky/layout/CreditCardNumberEditText$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;-><init>(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)V

    return-void
.end method

.method private playShakeAnimationHoneycomb()V
    .locals 5

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    const-string v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-instance v2, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter$1;-><init>(Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;F)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12
    .param p1    # Landroid/text/Editable;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getTypeForPrefix(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v0, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->limitLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-interface {p1, v11, v8, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # getter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    invoke-static {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$100(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v8

    if-eq v8, v3, :cond_1

    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # getter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    invoke-static {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$100(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # setter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    invoke-static {v8, v3}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$102(Lcom/google/android/finsky/layout/CreditCardNumberEditText;Lcom/google/android/finsky/billing/creditcard/CreditCardType;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # getter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnCreditCardTypeChangedListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;
    invoke-static {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$200(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # getter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnCreditCardTypeChangedListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;
    invoke-static {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$200(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;

    move-result-object v8

    invoke-interface {v8, v5, v3}, Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;->onCreditCardTypeChanged(Lcom/google/android/finsky/billing/creditcard/CreditCardType;Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->length:I

    if-ne v8, v9, :cond_6

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->isValidNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # getter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnNumberEnteredListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;
    invoke-static {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$300(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # getter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnNumberEnteredListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;
    invoke-static {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$300(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;->onNumberEntered()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    iget-object v9, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07004d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setTextColor(I)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_5

    invoke-direct {p0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->playShakeAnimationHoneycomb()V

    :cond_5
    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f090366

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f090047

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    const v11, 0x7f0900b9

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-static {v8, v7, v9}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    iget-object v9, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;->this$0:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    # getter for: Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v9}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->access$400(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
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
