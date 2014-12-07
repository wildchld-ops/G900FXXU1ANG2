.class public Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;
.super Lcom/google/android/finsky/layout/AddCreditCardFields;
.source "AddCreditCardFieldsFroyo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;
    }
.end annotation


# instance fields
.field private mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddCreditCardFields;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AddCreditCardFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/AddCreditCardFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    return-void
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private restoreVisibilites(Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_MONTH_YEAR_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mMonthField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mMonthYearSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mYearField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mCvcImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mCvcField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_ADDRESS:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/BillingAddress;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createCreditCardImagesAnimator()Lcom/google/android/finsky/layout/CreditCardImagesAnimator;
    .locals 4

    new-instance v0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mCreditCardImages:[Landroid/widget/ImageView;

    sget-object v3, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->CREDIT_CARD_IMAGES_TYPE_ORDER:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;-><init>(Landroid/content/Context;[Landroid/widget/ImageView;[Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V

    return-object v0
.end method

.method public expandFields()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCvcEntered()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_MONTH_YEAR_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_ADDRESS:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mCvcField:Landroid/widget/EditText;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mCvcField:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->focusNext(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->onAllFieldsVisible()V

    :cond_0
    return-void
.end method

.method public onCvcFocused()V
    .locals 0

    return-void
.end method

.method public onNumberEntered()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_MONTH_YEAR_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mMonthField:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mMonthYearSeparator:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mYearField:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mCvcImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mCvcField:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setNextFocusDownId(I)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->values()[Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->restoreVisibilites(Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;)V

    const-string v1, "parent_instance_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "parent_instance_state"

    invoke-super {p0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "state"

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
