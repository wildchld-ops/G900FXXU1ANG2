.class public abstract Lcom/google/android/finsky/layout/CreditCardImagesAnimator;
.super Ljava/lang/Object;
.source "CreditCardImagesAnimator.java"


# instance fields
.field protected mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field protected mImages:[Landroid/widget/ImageView;

.field protected mTypes:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;


# direct methods
.method public constructor <init>([Landroid/widget/ImageView;[Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "images must have at least one entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "types must have same length as images"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimator;->mImages:[Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimator;->mTypes:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-void
.end method


# virtual methods
.method public abstract animateToType(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)V
.end method

.method protected findIndex(Lcom/google/android/finsky/billing/creditcard/CreditCardType;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimator;->mTypes:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/CreditCardImagesAnimator;->mTypes:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
