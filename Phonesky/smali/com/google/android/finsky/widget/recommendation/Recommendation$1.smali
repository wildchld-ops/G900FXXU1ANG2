.class final Lcom/google/android/finsky/widget/recommendation/Recommendation$1;
.super Ljava/lang/Object;
.source "Recommendation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/recommendation/Recommendation;
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
        "Lcom/google/android/finsky/widget/recommendation/Recommendation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/recommendation/Recommendation;
    .locals 10
    .param p1    # Landroid/os/Parcel;

    const-wide/16 v2, 0x2

    const-class v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;

    const-class v1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;-><init>(Ljava/lang/Class;JJ)V

    throw v0

    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    new-instance v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v8, v9, v1}, Lcom/google/android/finsky/widget/recommendation/Recommendation;-><init>(Lcom/google/android/finsky/api/model/Document;JLcom/google/android/finsky/widget/recommendation/Recommendation$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/Recommendation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/recommendation/Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/widget/recommendation/Recommendation;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/google/android/finsky/widget/recommendation/Recommendation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/Recommendation$1;->newArray(I)[Lcom/google/android/finsky/widget/recommendation/Recommendation;

    move-result-object v0

    return-object v0
.end method
