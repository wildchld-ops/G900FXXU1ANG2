.class final Lcom/google/android/finsky/billing/IabParameters$1;
.super Ljava/lang/Object;
.source "IabParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/IabParameters;
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
        "Lcom/google/android/finsky/billing/IabParameters;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/IabParameters;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_1

    const/4 v6, 0x1

    :goto_0
    const/4 v5, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v0, Lcom/google/android/finsky/billing/IabParameters;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/IabParameters;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/IabParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/billing/IabParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/billing/IabParameters;
    .locals 1

    new-array v0, p1, [Lcom/google/android/finsky/billing/IabParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/IabParameters$1;->newArray(I)[Lcom/google/android/finsky/billing/IabParameters;

    move-result-object v0

    return-object v0
.end method
