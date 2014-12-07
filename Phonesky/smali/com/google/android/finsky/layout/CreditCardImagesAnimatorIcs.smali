.class public Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;
.super Lcom/google/android/finsky/layout/CreditCardImagesAnimator;
.source "CreditCardImagesAnimatorIcs.java"


# instance fields
.field private mGeneralImage:Landroid/widget/ImageView;

.field private mInOneCardMode:Z


# direct methods
.method public constructor <init>([Landroid/widget/ImageView;[Lcom/google/android/finsky/billing/creditcard/CreditCardType;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # [Landroid/widget/ImageView;
    .param p2    # [Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .param p3    # Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/CreditCardImagesAnimator;-><init>([Landroid/widget/ImageView;[Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V

    iput-object p3, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mGeneralImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public animateToType(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V
    .locals 9
    .param p1    # Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const/4 v8, -0x1

    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    if-eq p1, v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->findIndex(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)I

    move-result v2

    if-ne v2, v8, :cond_1

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mInOneCardMode:Z

    if-nez v5, :cond_1

    move v1, v3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    if-ne v0, v2, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mInOneCardMode:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mInOneCardMode:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mInOneCardMode:Z

    if-eqz v5, :cond_4

    if-ne v2, v8, :cond_6

    iget-object v4, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mGeneralImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    :cond_5
    return-void

    :cond_6
    iget-object v3, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mGeneralImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_3
.end method

.method public restoreCardType(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V
    .locals 8
    .param p1    # Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->findIndex(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    move v1, v3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-ne v0, v2, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setX(F)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public switchToOneCardMode()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mInOneCardMode:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->findIndex(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mImages:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mGeneralImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mGeneralImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mInOneCardMode:Z

    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimatorIcs;->mGeneralImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2
.end method
