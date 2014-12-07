.class final Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry$1;
.super Ljava/lang/Object;
.source "CardListAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;
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
        "Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    new-instance v3, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;-><init>(IIZLcom/google/android/finsky/adapters/CardListAdapter$1;)V

    return-object v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;
    .locals 1

    new-array v0, p1, [Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry$1;->newArray(I)[Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    move-result-object v0

    return-object v0
.end method
