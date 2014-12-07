.class final Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError$1;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;
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
        "Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;
    .locals 3
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    invoke-direct {v2, v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError$1;->newArray(I)[Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    move-result-object v0

    return-object v0
.end method
