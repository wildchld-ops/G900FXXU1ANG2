.class final Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError$1;
.super Ljava/lang/Object;
.source "CheckoutPurchaseFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    .locals 3
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    invoke-direct {v2, v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError$1;->newArray(I)[Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    move-result-object v0

    return-object v0
.end method
