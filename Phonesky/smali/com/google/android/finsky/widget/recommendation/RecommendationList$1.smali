.class final Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;
.super Ljava/lang/Object;
.source "RecommendationList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/recommendation/RecommendationList;
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
        "Lcom/google/android/finsky/widget/recommendation/RecommendationList;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 12
    .param p1    # Landroid/os/Parcel;

    const-wide/16 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;

    const-class v1, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;-><init>(Ljava/lang/Class;JJ)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    sget-object v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v10, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v9, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-direct {v9, v11, v6}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-virtual {v9, v8}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->add(Lcom/google/android/finsky/widget/recommendation/Recommendation;)Z

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;->newArray(I)[Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method
