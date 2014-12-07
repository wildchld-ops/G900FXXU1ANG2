.class public Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;
.super Lcom/google/android/finsky/layout/CreditCardImagesAnimator;
.source "CreditCardImagesAnimatorFroyo.java"


# instance fields
.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mVisible:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/widget/ImageView;[Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # [Landroid/widget/ImageView;
    .param p3    # [Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/layout/CreditCardImagesAnimator;-><init>([Landroid/widget/ImageView;[Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V

    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mVisible:[Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mVisible:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    const v0, 0x7f050003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mFadeInAnimation:Landroid/view/animation/Animation;

    const v0, 0x7f050005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mFadeOutAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public animateToType(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    if-eq p1, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->findIndex(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mImages:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    if-eq v0, v1, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mVisible:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mImages:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mVisible:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mVisible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mImages:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mVisible:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_1

    :cond_4
    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorFroyo;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    :cond_5
    return-void
.end method
