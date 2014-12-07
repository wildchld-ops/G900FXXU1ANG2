.class final Lcom/google/android/finsky/api/model/DfeSearch$1;
.super Ljava/lang/Object;
.source "DfeSearch.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/DfeSearch;
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
        "Lcom/google/android/finsky/api/model/DfeSearch;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeSearch;
    .locals 8
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/finsky/api/model/DfeSearch;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v0, v2, v6}, Lcom/google/android/finsky/api/model/DfeSearch;-><init>(Ljava/util/List;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeSearch$1;)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeSearch$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeSearch;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/api/model/DfeSearch;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/google/android/finsky/api/model/DfeSearch;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeSearch$1;->newArray(I)[Lcom/google/android/finsky/api/model/DfeSearch;

    move-result-object v0

    return-object v0
.end method
