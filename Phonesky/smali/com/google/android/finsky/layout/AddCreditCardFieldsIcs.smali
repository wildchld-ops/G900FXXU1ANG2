.class public Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;
.super Lcom/google/android/finsky/layout/AddCreditCardFields;
.source "AddCreditCardFieldsIcs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;
    }
.end annotation


# static fields
.field private static KEY_PARENT_STATE:Ljava/lang/String;

.field private static KEY_STATE:Ljava/lang/String;


# instance fields
.field private mEditNumberButton:Landroid/widget/ImageButton;

.field private mGeneralLogo:Landroid/widget/ImageView;

.field private mNumberConcealed:Landroid/widget/TextView;

.field private mRestorePositionsOnLayout:Z

.field private mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "parent_instance_state"

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->KEY_PARENT_STATE:Ljava/lang/String;

    const-string v0, "state"

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->KEY_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddCreditCardFields;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AddCreditCardFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/AddCreditCardFields;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private animateToTranslationFadeIn(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateToTranslationFadeOut(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$6;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private calculateHeaderHeight()I
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private concealNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->concealNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBillingAddressTranslationY()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMonthYearCvcTranslationY()I

    move-result v0

    return v0
.end method

.method private getCreditCardImagesTranslationY()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->calculateHeaderHeight()I

    move-result v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHeaderTranslationY()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->calculateHeaderHeight()I

    move-result v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMonthYearCvcTranslationY()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->calculateHeaderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_EXPANDED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->calculateHeaderHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberTranslationY()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->calculateHeaderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private indentNumberField()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private moveToEnteringAddressContractedCardState()V
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000

    const/4 v10, 0x0

    sget-object v8, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iput-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    const-wide/16 v8, 0x96

    invoke-direct {p0, v8, v9}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setAnimationDelay(J)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getNumberTranslationY()I

    move-result v6

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMonthYearCvcTranslationY()I

    move-result v5

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-direct {p0, v8, v6}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeOut(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeOut(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthYearSeparator:Landroid/widget/TextView;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeOut(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mYearField:Landroid/widget/EditText;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeOut(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeOut(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcField:Landroid/widget/EditText;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeOut(Landroid/view/View;I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->concealNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getBillingAddressTranslationY()I

    move-result v1

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v8, v12}, Lcom/google/android/finsky/layout/BillingAddress;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v8, v10}, Lcom/google/android/finsky/layout/BillingAddress;->setAlpha(F)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/BillingAddress;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v1

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v1

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getHeaderTranslationY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$2;

    invoke-direct {v9, p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$2;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getCreditCardImagesTranslationY()I

    move-result v2

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mImagesAnimator:Lcom/google/android/finsky/layout/CreditCardImagesAnimator;

    check-cast v8, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->switchToOneCardMode()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCreditCardImages:[Landroid/widget/ImageView;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mGeneralLogo:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcField:Landroid/widget/EditText;

    const v9, 0x7f080049

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/BillingAddress;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$3;

    invoke-direct {v9, p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$3;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->onAllFieldsVisible()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->requestLayout()V

    return-void
.end method

.method private moveToEnteringAddressExpandedCardState()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_EXPANDED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iput-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    const-wide/16 v2, 0x96

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setAnimationDelay(J)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$4;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$4;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->indentNumberField()V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$5;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$5;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMonthYearCvcTranslationY()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeIn(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthYearSeparator:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeIn(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mYearField:Landroid/widget/EditText;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeIn(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcField:Landroid/widget/EditText;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeIn(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->animateToTranslationFadeIn(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getBillingAddressTranslationY()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/BillingAddress;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->requestLayout()V

    return-void
.end method

.method private moveToEnteringCvcState()V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private moveToEnteringMonthYearState()V
    .locals 3

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_MONTH_YEAR:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iput-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setupNumberEnteredAnimation(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthYearSeparator:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setupNumberEnteredAnimation(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mYearField:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setupNumberEnteredAnimation(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcField:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setupNumberEnteredAnimation(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setNextFocusDownId(I)V

    return-void
.end method

.method private restorePositions(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;)V
    .locals 11

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getNumberTranslationY()I

    move-result v7

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMonthYearCvcTranslationY()I

    move-result v6

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getBillingAddressTranslationY()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getCreditCardImagesTranslationY()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getHeaderTranslationY()I

    move-result v3

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    int-to-float v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCreditCardImages:[Landroid/widget/ImageView;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v8, v0, v4

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTranslationY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mGeneralLogo:Landroid/widget/ImageView;

    int-to-float v10, v2

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    int-to-float v10, v7

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthYearSeparator:Landroid/widget/TextView;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mYearField:Landroid/widget/EditText;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcField:Landroid/widget/EditText;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    int-to-float v10, v7

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    int-to-float v10, v7

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    int-to-float v10, v1

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/layout/BillingAddress;->setTranslationY(F)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    int-to-float v10, v1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v9

    sget-object v10, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v10

    if-lt v9, v10, :cond_1

    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mImagesAnimator:Lcom/google/android/finsky/layout/CreditCardImagesAnimator;

    check-cast v9, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->switchToOneCardMode()V

    :goto_1
    return-void

    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mImagesAnimator:Lcom/google/android/finsky/layout/CreditCardImagesAnimator;

    check-cast v9, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;

    iget-object v10, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCurrentCardType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->restoreCardType(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V

    goto :goto_1
.end method

.method private restoreVisibilities(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_MONTH_YEAR:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_EXPANDED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mYearField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthYearSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_EXPANDED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/BillingAddress;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mMonthYearSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mYearField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCvcField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setAlpha(F)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_EXPANDED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->indentNumberField()V

    goto :goto_0
.end method

.method private setAnimationDelay(J)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupNumberEnteredAnimation(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected createCreditCardImagesAnimator()Lcom/google/android/finsky/layout/CreditCardImagesAnimator;
    .locals 4

    new-instance v0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mCreditCardImages:[Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->CREDIT_CARD_IMAGES_TYPE_ORDER:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    iget-object v3, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mGeneralLogo:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;-><init>([Landroid/widget/ImageView;[Lcom/google/android/finsky/billing/creditcard/CreditCardType;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public expandFields()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->moveToEnteringAddressExpandedCardState()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->moveToEnteringAddressExpandedCardState()V

    :cond_0
    return-void
.end method

.method public onCvcEntered()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->moveToEnteringAddressContractedCardState()V

    :cond_0
    return-void
.end method

.method public onCvcFocused()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_MONTH_YEAR:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->moveToEnteringCvcState()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mNumberConcealed:Landroid/widget/TextView;

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mEditNumberButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mGeneralLogo:Landroid/widget/ImageView;

    invoke-super {p0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onFinishInflate()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$1;-><init>(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setOnHeightOffsetChangedListener(Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mRestorePositionsOnLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mRestorePositionsOnLayout:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->restorePositions(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onMeasure(II)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/BillingAddress;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mPrivacyFooter:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setMeasuredDimension(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_CONTRACTED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_ADDRESS_EXPANDED_CARD:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->getBillingAddressTranslationY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onNumberEntered()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->moveToEnteringMonthYearState()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->values()[Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->KEY_STATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->restoreVisibilities(Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mRestorePositionsOnLayout:Z

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->KEY_PARENT_STATE:Ljava/lang/String;

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

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->KEY_PARENT_STATE:Ljava/lang/String;

    invoke-super {p0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->KEY_STATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs;->mState:Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/AddCreditCardFieldsIcs$State;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
