.class public Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
.super Ljava/lang/Object;
.source "CheckoutPurchaseFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckoutPurchaseError"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final errorMessageHtml:Ljava/lang/String;

.field public final permissionError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->permissionError:I

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->errorMessageHtml:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->permissionError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->errorMessageHtml:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->errorMessageHtml:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->errorMessageHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
