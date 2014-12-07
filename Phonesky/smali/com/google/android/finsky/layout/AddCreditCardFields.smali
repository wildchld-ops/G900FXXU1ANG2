.class public abstract Lcom/google/android/finsky/layout/AddCreditCardFields;
.super Landroid/widget/RelativeLayout;
.source "AddCreditCardFields.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;,
        Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;,
        Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;
    }
.end annotation


# static fields
.field protected static CREDIT_CARD_IMAGES_TYPE_ORDER:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field private static KEY_ALL_FIELDS_VISIBLE:Ljava/lang/String;

.field private static KEY_CARD_TYPE:Ljava/lang/String;

.field private static KEY_PARENT_STATE:Ljava/lang/String;


# instance fields
.field private mAllFieldsVisible:Z

.field protected mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

.field protected mCreditCardImages:[Landroid/widget/ImageView;

.field protected mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field protected mCvcField:Landroid/widget/EditText;

.field protected mCvcImage:Landroid/widget/ImageView;

.field protected mHeader:Landroid/widget/TextView;

.field protected mImagesAnimator:Lcom/google/android/finsky/layout/CreditCardImagesAnimator;

.field protected mMonthField:Landroid/widget/EditText;

.field protected mMonthYearSeparator:Landroid/widget/TextView;

.field protected mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

.field private mOnAllFieldsVisibleListener:Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;

.field protected mPrivacyFooter:Landroid/widget/TextView;

.field protected mYearField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "parent_instance_state"

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_PARENT_STATE:Ljava/lang/String;

    const-string v0, "all_fields_visible"

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_ALL_FIELDS_VISIBLE:Ljava/lang/String;

    const-string v0, "card_type"

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_CARD_TYPE:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->VISA:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->AMEX:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->DISCOVER:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->JCB:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFields;->CREDIT_CARD_IMAGES_TYPE_ORDER:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected static focusNext(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected static focusPrevious(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areAllFieldsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mAllFieldsVisible:Z

    return v0
.end method

.method protected abstract createCreditCardImagesAnimator()Lcom/google/android/finsky/layout/CreditCardImagesAnimator;
.end method

.method public abstract expandFields()Z
.end method

.method protected onAllFieldsVisible()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mAllFieldsVisible:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mOnAllFieldsVisibleListener:Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mOnAllFieldsVisibleListener:Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;->onAllFieldsVisible()V

    :cond_0
    return-void
.end method

.method public onCreditCardTypeChanged(Lcom/google/android/finsky/billing/creditcard/CreditCardType;Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .param p2    # Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mImagesAnimator:Lcom/google/android/finsky/layout/CreditCardImagesAnimator;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/CreditCardImagesAnimator;->animateToType(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V

    return-void
.end method

.method protected abstract onCvcEntered()V
.end method

.method protected abstract onCvcFocused()V
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mMonthField:Landroid/widget/EditText;

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mMonthYearSeparator:Landroid/widget/TextView;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mYearField:Landroid/widget/EditText;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCvcField:Landroid/widget/EditText;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BillingAddress;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCvcImage:Landroid/widget/ImageView;

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    const/4 v2, 0x3

    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCreditCardImages:[Landroid/widget/ImageView;

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mPrivacyFooter:Landroid/widget/TextView;

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->createCreditCardImagesAnimator()Lcom/google/android/finsky/layout/CreditCardImagesAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mImagesAnimator:Lcom/google/android/finsky/layout/CreditCardImagesAnimator;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    new-instance v1, Lcom/google/android/finsky/layout/AddCreditCardFields$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AddCreditCardFields$1;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFields;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setOnNumberEnteredListener(Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setOnCreditCardTypeChangedListener(Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mMonthField:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mMonthField:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mYearField:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mYearField:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/layout/AddCreditCardFields$AutoAdvancer;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCvcField:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/layout/AddCreditCardFields$CvcTextWatcher;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFields;Lcom/google/android/finsky/layout/AddCreditCardFields$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCvcField:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/layout/AddCreditCardFields$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AddCreditCardFields$2;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFields;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected abstract onNumberEntered()V
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1    # Landroid/os/Parcelable;

    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_ALL_FIELDS_VISIBLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mAllFieldsVisible:Z

    sget-object v2, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_CARD_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mAllFieldsVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onAllFieldsVisible()V

    :cond_0
    sget-object v2, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_PARENT_STATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v2

    aget-object v2, v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_PARENT_STATE:Ljava/lang/String;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_ALL_FIELDS_VISIBLE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mAllFieldsVisible:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lcom/google/android/finsky/layout/AddCreditCardFields;->KEY_CARD_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->ordinal()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setOnAllFieldsVisibleListener(Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddCreditCardFields;->mOnAllFieldsVisibleListener:Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;

    return-void
.end method
